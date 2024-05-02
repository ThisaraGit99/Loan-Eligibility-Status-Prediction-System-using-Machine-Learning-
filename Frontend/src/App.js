import React from 'react';
import './App.css';
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import HomePage from './pages/HomePage';
import Login from './pages/Login';
import Registerpage from './pages/Registerpage';
import Loanform from './pages/Loanform';

function App() {
  return (
    <div className="App">
      <Router>
        <Routes>
          <Route exact path="/" element={<HomePage />} />
          <Route exact path="/login" element={<Login />} />
          <Route exact path="/register" element={<Registerpage />} />
          <Route exact path="/loanform" element={<Loanform />} />
        </Routes>
      </Router>
      
    </div>
  );
}

export default App;
