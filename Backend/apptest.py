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
