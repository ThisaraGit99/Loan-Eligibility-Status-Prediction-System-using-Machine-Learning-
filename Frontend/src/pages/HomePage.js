import React from 'react';
import { Link } from 'react-router-dom';
import './HomePage.css';
import placeholderImage from './homepic.png';

const HomePage = () => {
  return (
    <div className="home-page">
      {/* Navigation Bar */}
      <div className="navigation-bar">
        <ul>
          <li className="nav-item">
            <Link to="/" className="nav-link1">LoanWise</Link>
          </li>
          <li className="nav-item">
            <Link to="/login" className="nav-link">Login</Link>
          </li>
          <li className="nav-item">
            <Link to="/register" className="nav-link">Register</Link>
          </li>
        </ul>
      </div>

      {/* Main Content */}
      <div className="main-content">
        <h1>Welcome to LoanWise</h1>
        <p>
        Your trusted partner for efficient loan eligibility predictions, check your eligibility for a loan by filling out the form.
        </p>
        <img src={placeholderImage} alt="Placeholder" className="homepage-image" />
        {/* Link to Login Page */}
        <Link to="/login">
          <button>Check Your Loan Status</button>
        </Link>
      </div>
    </div>
  );
};

export default HomePage;
