import React from "react";
import { Link } from "react-router-dom";

function Header() {
  return (
    <>
      <div className="Header">
        <div className="top-bar">
          <div className="top-bar inner container_12">
            <div className="announcement grid_8">
              <Link to="#link" className="discount">Get your 25% off</Link>
            </div>
          </div>
        </div>        
        <div className="logo container_12">
          <div className="grid_5">
            <h1><span className="co-name">Smell Good Inc.</span></h1>            
          </div>
          <div className="grid_7">
            <nav className="nav-bar">
              <ul>
                <li className="homeLink">
                  <Link to="/">HOME</Link>
                </li>
                <li className="navLink">
                  <Link to="/about">ABOUT</Link>
                </li>
                <li className="navLink">
                  <Link to="/collection">COLLECTION</Link>
                </li>
                <li className="navLink">
                  <Link to="/services">SERVICES</Link>
                </li>
                <li className="navLink">
                  <Link to="/signup">SIGN UP</Link>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </>
  );
}

export default Header;