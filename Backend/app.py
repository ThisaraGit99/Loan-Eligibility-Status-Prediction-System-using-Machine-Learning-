from flask import Flask, request, jsonify, session
from flask_cors import CORS
import pickle
import numpy as np
import mysql.connector
import base64

app = Flask(__name__)
CORS(app, resources={r"/login": {"origins": "http://localhost:3000"}})
CORS(app, resources={r"/register": {"origins": "http://localhost:3000"}})
CORS(app, resources={r"/predict": {"origins": "http://localhost:3000"}})
CORS(app, resources={r"/logout": {"origins": "http://localhost:3000"}})
app.secret_key = 'your_secret_key'  
# Configure the MySQL database
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",  
    database="loandatabase"
)

# Load the trained model
model_filename = 'finalmodel.pkl'
with open(model_filename, 'rb') as file:
    model = pickle.load(file)

# Mapping dictionaries for categorical features
categorical_mappings = {
    'Gender': {'Male': 1, 'Female': 0},
    'Married': {'Yes': 1, 'No': 0},
    'Dependents': {'0': 0, '1': 1, '2': 2, '3+': 3},
    'Education': {'Graduate': 1, 'Not Graduate': 0},
    'Self_Employed': {'Yes': 1, 'No': 0},
    'Credit_History': {'Yes': 1, 'No': 0},
    'Property_Area': {'Urban': 0, 'Semiurban': 1, 'Rural': 2}
}

# Simple encryption function
def simple_encrypt(data):
    return base64.b64encode(data.encode()).decode()

# Simple decryption function
def simple_decrypt(data):
    return base64.b64decode(data.encode()).decode()

@app.route('/register', methods=['POST'])
def register_user():
    try:
        data = request.json
        name = simple_encrypt(data['name'])
        email = simple_encrypt(data['email'])
        password = simple_encrypt(data['password'])

        # Check if the email is already registered
        cursor = db.cursor(dictionary=True)
        cursor.execute("SELECT * FROM users WHERE email = %s", (email,))
        existing_user = cursor.fetchone()
        cursor.close()

        if existing_user:
            return jsonify({'error': 'Email is already registered'})

        # Insert the new customer into the database
        cursor = db.cursor()
        cursor.execute(
            "INSERT INTO users (name, email, password) VALUES (%s, %s, %s)",
            (name, email, password)
        )
        db.commit()
        cursor.close()

        return jsonify({'message': 'Registration successful'})

    except Exception as e:
        return jsonify({'error': str(e)})   

@app.route('/login', methods=['POST'])
def user_login():
    try:
        data = request.json
        email = simple_encrypt(data['email'])
        password = simple_encrypt(data['password'])

        cursor = db.cursor(dictionary=True)
        cursor.execute("SELECT * FROM users WHERE email = %s AND password = %s", (email, password))
        user = cursor.fetchone()

        if user:
            # Customer login successful
            session['user_id'] = user['user_id']  
            cursor.close()
            return jsonify({'message': 'User logged in successfully'}), 200  # Return 200 for success
        else:
            cursor.close()
            return jsonify({'error': 'Invalid email or password'}), 401  # Return 401 for unauthorized

    except Exception as e:
        return jsonify({'error': str(e)}), 500  # Return 500 for internal server error

@app.route('/predict', methods=['POST'])
def predict_loan_eligibility_status():
    try:
        # Get data from the request
        data = request.json
        # Encrypt categorical values and store in a separate dictionary
        encrypted_categorical_values = {}
        for key, value in data.items():
            if key in categorical_mappings:
                encrypted_value = simple_encrypt(value)
                encrypted_categorical_values[key] = encrypted_value
                data[key] = encrypted_value  # Replace the original value with the encrypted value

        # Map categorical values back to their numeric counterparts
        mapped_data = {}
        for key, value in data.items():
            if key in categorical_mappings:
                mapped_data[key] = categorical_mappings[key].get(simple_decrypt(value), '')
            else:
                mapped_data[key] = str(value)  # Convert to string

        prediction = model.predict([list(mapped_data.values())])[0]

        # Convert the prediction to a human-readable result
        result = "Loan Approved" if prediction == 1 else "Loan Rejected"

        # Save the applicant data with encrypted categorical values and encrypted prediction result
        cursor = db.cursor()
        cursor.execute(
            "INSERT INTO usersform (gender, married, dependents, education, self_employed, credit_history, property_area, applicant_income, coapplicant_income, loan_amount, loan_amount_term, prediction_result) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
            (
                encrypted_categorical_values['Gender'],
                encrypted_categorical_values['Married'],
                encrypted_categorical_values['Dependents'],
                encrypted_categorical_values['Education'],
                encrypted_categorical_values['Self_Employed'],
                encrypted_categorical_values['Credit_History'],
                encrypted_categorical_values['Property_Area'],
                data['ApplicantIncome'],
                data['CoapplicantIncome'],
                data['LoanAmount'],
                data['Loan_Amount_Term'],
                simple_encrypt(result),  # Store the encrypted result in the database
            )
        )
        db.commit()
        cursor.close()

        return jsonify({'result': result})  # Return the unencrypted result to the frontend

    except Exception as e:
        print("Prediction error:", str(e))
        return jsonify({'error': str(e)})
    
@app.route('/logout', methods=['POST'])
def user_logout():
    try:
        # Clear the customer_id from the session to logout
        session.pop('user_id', None)
        return jsonify({'message': 'User logged out successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    app.run(port=5000)
