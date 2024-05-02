from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time

# Start a new instance of Chrome WebDriver
driver = webdriver.Chrome()

# Open the registration page
driver.get("http://localhost:3000/register")  # Update the URL as per your application's URL

# Fill out the registration form
name_input = driver.find_element(By.ID, "name")
name_input.send_keys("testuser01")  

email_input = driver.find_element(By.ID, "email")
email_input.send_keys("testuser01@mail.com")  

password_input = driver.find_element(By.ID, "password")
password_input.send_keys("testuser12")  

# Submit the form
submit_button = driver.find_element(By.XPATH, "//button[contains(text(),'Sign Up')]")
submit_button.click()

# Wait for the success message or error message to appear
time.sleep(5) 

# Wait for the success message or error message to appear
try:
    WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.XPATH, "//div[contains(@class, 'alert-success')]"))
    )
    success_message_element = driver.find_element(By.XPATH, "//div[contains(@class, 'alert-success')]")
    print("Registration successful! Message:", success_message_element.text)
except:
    print("Error: Registration Faild!")


# Open the login page
driver.get("http://localhost:3000/login") 

# Fill out the login form
email_login_input = driver.find_element(By.ID, "email")
email_login_input.send_keys("testuser01@mail.com")  

password_login_input = driver.find_element(By.ID, "password")
password_login_input.send_keys("testuser12")  

# Submit the login form
login_button = driver.find_element(By.XPATH,"//button[contains(text(),'Login')]")
login_button.click()

# Wait for the success message or error message to appear
time.sleep(5) 

# Check if login was successful
try:
    alert = WebDriverWait(driver, 10).until(EC.alert_is_present())
    alert_text = alert.text
    alert.accept()  # Close the alert
    print(alert_text)
except:
    print("No alert found")


# Open the prediction page
driver.get("http://localhost:3000/loanform")  

# Fill out the prediction form
gender_select = driver.find_element(By.ID,"Gender")
gender_select.send_keys("Male")  

married_select = driver.find_element(By.ID,"Married")
married_select.send_keys("Yes")  

dependents_select = driver.find_element(By.ID,"Dependents")
dependents_select.send_keys("0")  

education_select = driver.find_element(By.ID,"Education")
education_select.send_keys("Graduate")  

self_employed_select = driver.find_element(By.ID,"Self_Employed")
self_employed_select.send_keys("No")  

credit_history_select = driver.find_element(By.ID,"Credit_History")
credit_history_select.send_keys("Yes")
  
property_area_select = driver.find_element(By.ID,"Property_Area")
property_area_select.send_keys("Urban") 

applicant_income_input = driver.find_element(By.ID,"ApplicantIncome")
applicant_income_input.send_keys("50000")  

coapplicant_income_input = driver.find_element(By.ID,"CoapplicantIncome")
coapplicant_income_input.send_keys("2000")  

loan_amount_input = driver.find_element(By.ID,"LoanAmount")
loan_amount_input.send_keys("300000")  

loan_amount_term_input = driver.find_element(By.ID,"Loan_Amount_Term")
loan_amount_term_input.send_keys("36")  

# Submit the prediction form
predict_button = driver.find_element(By.XPATH,"//button[contains(text(),'Predict Loan Eligibility Status')]")
predict_button.click()

# Wait for the result message to appear
time.sleep(5) 

# Check if prediction result is displayed
result_element = driver.find_element(By.ID,"prediction-result")
result_text = result_element.text

if "Loan Approved" in result_text:
    print("Prediction test passed!")
else:
    print("Prediction test failed: " + result_text)
    
# Close the browser
driver.close()