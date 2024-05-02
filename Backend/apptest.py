import unittest
import json
from app import app

class TestApp(unittest.TestCase):


    def setUp(self):
        app.config['TESTING'] = True
        self.app = app.test_client()

    def test_register_user(self):
        # Test registration with valid data
        data = {'name': 'test09', 'email': 'test09@mail.com', 'password': 'test09'}
        response = self.app.post('/register', json=data)
        self.assertEqual(response.status_code, 200)
        
        data = json.loads(response.data.decode())
        if 'message' in data:
            self.assertEqual(data['message'], 'Registration successful')
        elif 'error' in data:
            self.fail(f"Registration failed: {data['error']}")

        # # Test registration with existing email
        # existing_data = {'name': 'test02', 'email': 'test01@mail.com', 'password': 'test02'}
        # response = self.app.post('/register', json=existing_data)
        # self.assertEqual(response.status_code, 200)
       
        # data = json.loads(response.data.decode())
        # if 'error' in data:
        #     self.assertEqual(data['error'], 'Email is already registered')
        # else:
        #     self.fail("Expected registration to fail with existing email")


    # def test_already_registration(self):
    #     # Attempt to register with an email that's already been used
    #     data = {'name': 'test09', 'email': 'test09@mail.com', 'password': 'test09',}

    #     # Send another POST request to the registration endpoint with the same email
    #     response = self.app.post('/register', json=data)

    #     # Check if the response status code is 409 (conflict)
    #     self.assertEqual(response.status_code, 409)

    #     # Parse the response JSON and check for the error message
    #     data = json.loads(response.data)
    #     self.assertEqual(data['error'], 'Email already registered')
    
    def test_already_registration(self):
        # Attempt to register with an email that's already been used
        data = {'name': 'test09', 'email': 'test09@mail.com', 'password': 'test09'}

        # First, register a user with the provided email
        self.app.post('/register', json=data)

        # Attempt to register again with the same email
        response = self.app.post('/register', json=data)

        # Check if the response status code is 409 (conflict)
        self.assertEqual(response.status_code, 409)

        # Parse the response JSON and check for the error message
        data = json.loads(response.data.decode())
        self.assertEqual(data['error'], 'Email already registered')




    def test_user_login(self):
        # Test login with valid credentials
        data = {'email': 'test09@mail.com', 'password': 'test09'}
        response = self.app.post('/login', json=data)
        self.assertEqual(response.status_code, 200)

        
        

    def test_predict_loan_eligibility_status(self):
        # Test loan prediction endpoint
        data = {
            'Gender': 'Male', 'Married': 'Yes', 'Dependents': '1', 'Education': 'Graduate',
            'Self_Employed': 'No', 'Credit_History': 'Yes', 'Property_Area': 'Urban',
            'ApplicantIncome': 100000, 'CoapplicantIncome': 20000, 'LoanAmount': 300000,
            'Loan_Amount_Term': 12
        }
        response = self.app.post('/predict', json=data)
        self.assertEqual(response.status_code, 200)
        
        data = json.loads(response.data.decode())
        self.assertIn(data['result'], ['Loan Approved', 'Loan Rejected'])




    def test_user_logout(self):
        # Test user logout endpoint
        response = self.app.post('/logout')
        self.assertEqual(response.status_code, 200)

if __name__ == '__main__':
    unittest.main()
