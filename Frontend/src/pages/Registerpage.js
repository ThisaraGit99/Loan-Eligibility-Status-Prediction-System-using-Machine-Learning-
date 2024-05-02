import React, { useState,useEffect } from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';
import './Register.css';

function Registerpage() {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    password: '',
  });

  const [successMessage, setSuccessMessage] = useState('');
  const [error, setError] = useState('');

  // Add a class to the body element when the component mounts
  useEffect(() => {
    document.body.classList.add('register-body');

    // Remove the class when the component unmounts
    return () => {
      document.body.classList.remove('register-body');
    };
  }, []);

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData({
      ...formData,
      [name]: value,
    });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post('http://localhost:5000/register', formData, {
        headers: {
          'Content-Type': 'application/json',
        },
      });

      if (response.status === 200) {
        setSuccessMessage('Registration successful!');
        setError('');
      }
    } catch (error) {
      console.log(error.response); // Log the error response
      if (error.response && error.response.data && error.response.data.error) {
        setError(error.response.data.error);
      } else {
        setError('Error: ' + error.message);
      }
    }
  };
  

  return (
    <>
    {/* Navigation bar */}
    <nav className="navbar-reg">
    <div className="navbar-brand-reg">
      <Link to="/">LoanWise</Link>
    </div>
  </nav>
    
    <div className="container02">
      <div className="reg-content">
        <h2>Sign Up</h2>
        <form onSubmit={handleSubmit}>
          <div className="form-group">
            <label htmlFor="name" className="label">
              Name
            </label>
            <input
              type="text"
              id="name"
              name="name"
              value={formData.name}
              onChange={handleInputChange}
              className="input-field"
              required
              placeholder="Enter your Name"
            />
          </div>

          <div className="form-group">
            <label htmlFor="email" className="label">
              Email
            </label>
            <input
              type="email"
              id="email"
              name="email"
              value={formData.email}
              onChange={handleInputChange}
              className="input-field"
              required
              placeholder="Enter your Email"
            />
          </div>

          <div className="form-group">
            <label htmlFor="password" className="label">
              Password
            </label>
            <input
              type="password"
              id="password"
              name="password"
              value={formData.password}
              onChange={handleInputChange}
              className="input-field"
              required
              minLength={6}
              maxLength={20}
              placeholder="Enter your Password"
            />
          </div>

          <div className="form-group">
            <button type="submit" className="btn btn-primary">
              Sign Up
            </button>
          </div>
        </form>

        {successMessage && <div className="alert alert-success">{successMessage}</div>}
        {error && <div className="alert alert-danger">{error}</div>}

        <div className="link">
          Already have an account? <Link to="/login">Login Here</Link>
        </div>
      </div>
    </div>
    </>
  );
}

export default Registerpage;
