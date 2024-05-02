import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { Link, useNavigate } from 'react-router-dom';
import './Login.css'; // Import component-specific CSS

function Login() {
  const navigate = useNavigate();
  const [formData, setFormData] = useState({
    email: '',
    password: '',
  });
  const [successMessage, setSuccessMessage] = useState('');
  const [errorMessage, setErrorMessage] = useState('');

  // Add a class to the body element when the component mounts
  useEffect(() => {
    document.body.classList.add('login-body');

    // Remove the class when the component unmounts
    return () => {
      document.body.classList.remove('login-body');
    };
  }, []);

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData({
      ...formData,
      [name]: value,
    });
  };

  const handleLogin = async (e) => {
    e.preventDefault();

    try {
      const response = await axios.post('http://localhost:5000/login', formData, {
        headers: {
          'Content-Type': 'application/json',
        },
      });

      if (response.status === 200) {
        setSuccessMessage('Login successful');
        setErrorMessage('');
        navigate('/loanform');
        alert('Login successful'); // Display the login successful alert
      } else {
        setErrorMessage('Invalid email or password');
        setSuccessMessage('');
      }
    } catch (error) {
      setErrorMessage('Invalid email or password'); // Set the same custom error message
      setSuccessMessage();
    }
  };
  

  return (
  <div>
    <div className="container01">
        <div className="login-form">
          <h2>Login</h2>
          <form onSubmit={handleLogin}>
            <div className="form-group">
              <label htmlFor="email">Email</label>
              <input
                type="email"
                id="email"
                name="email"
                value={formData.email}
                onChange={handleInputChange}
                className="input-field"
                placeholder="Enter your email"
                required
              />
            </div>
            <div className="form-group">
              <label htmlFor="password">Password</label>
              <input
                type="password"
                id="password"
                name="password"
                value={formData.password}
                onChange={handleInputChange}
                className="input-field"
                placeholder="Enter your password"
                required
              />
            </div>
            <div className="form-group">
              <button type="submit" className="btn-login">
                Login
              </button>
            </div>
          </form>
          {successMessage && <div className="success-message">{successMessage}</div>}
          {errorMessage && <div className="error-message">{errorMessage}</div>}
          <div className="form-group">
            You Haven't Account? <Link to="/register" >Register Here </Link>
          </div>
        </div>
      </div>
  </div>
  );
}

export default Login;
