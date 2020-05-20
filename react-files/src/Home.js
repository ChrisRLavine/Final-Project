import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";

function Home() {
  const [ page, setPage ] = useState({});
  const [inputs, setInputs] = useState({
      email: ""
  });

  const handleSubmit = (event) => {
    event.preventDefault();
    fetch("http://localhost:3216/api/contact/create", {
        method: 'POST',
        headers: {
            'Content-Type' : 'application/json',
        },
        body: JSON.stringify(inputs),
    })
    .then(response => response.json())
    .then(data => {
        console.log('Sucess', data);
        
    })
    .catch((error) =>{
        console.error('Error', error);
    });
    setInputs({
        email:""
    });
  }

  const handleChange = (event) => {
    const {name, value} = event.target;
    setInputs((prevState) => {
        return {...prevState, [name]: value};
    })
  }

  useEffect(() => {
    fetch("http://localhost:3216/api/contact")
    .then(response => response.json())
    .then(page => {
        setPage(page);
    })
  }, []);
    
  return (
    <>
        <img className="hero" src="https://www.irishtimes.com/polopoly_fs/1.1835657.1403020976!/image/image.jpg_gen/derivatives/ratio_1x1_w1200/image.jpg" alt="" height="" width="100%" />
        <div className="news-div">
          <div className="sign-up">
            <h2>Sign up for our newsletter</h2><br/>
            <p>Sign up with your email to recieve our monthly newsletter, be up to date on our weekly deals, and have access to exclusive releases.</p>
          </div>
          <div className="email">
            <form onSubmit={handleSubmit}>
              <input 
              name="email"
              value={inputs.email} 
              type="text" 
              placeholder="email"
              onChange={handleChange} required />
              <input type="submit" value="submit"></input>
            </form>
          </div>
        </div>
        <div className="main-content">
          <div className="new-arrival">
            <h2>New Arrivals</h2>
            <p>Check out our newest arriavls</p>
            <Link to="/collection/newest" className='tal'>Take a Look</Link>
          </div>
          <div className="our-fav">
            <h2>Staff Picks</h2>
            <p>See what our staff likes</p>
            <Link to="/collection/bestsellers" className='tal'>Take a Look</Link>
          </div>
          <div className="sale">
            <h2>On Sale</h2>
            <p>Check latest deals</p>
            <Link to="/collection/onsale" className='tal'>Take a Look</Link>
          </div>            
        </div>
      </>
    )
}

export default Home