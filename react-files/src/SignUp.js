import React, { useState, useEffect } from 'react';

function SignUp() {
    const [ page, setPage ] = useState({});
    const [inputs, setInputs] = useState({
        fname: "",
        lname: "",
        email: "",
        username: "",
        password: ""
    });

    const handleSubmit = (event) => {
        event.preventDefault();
        fetch("http://localhost:3216/api/account/create", {
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
            fname:"",
            lname:"",
            email:"",
            username:"",
            Password:""
        });
    }

    const handleChange = (event) => {
        const {name, value} = event.target;
        setInputs((prevState) => {
            return {...prevState, [name]: value};
        })
    }

    useEffect(() => {
        fetch("http://localhost:3216/api/")
        .then(response => response.json())
        .then(page => {
            setPage(page);
        })
    }, []);

    return (
        <div className="account-form">
            <div>
                <h1>Smell Good with Smell Good Inc.</h1>
                <p>create an account with us</p>            
            </div>
        
            <form onSubmit={handleSubmit}>
                <label className="label">First Name</label>
                    <input className="input-field" 
                    name="fname" 
                    value={inputs.fname} 
                    type="text" 
                    placeholder="First Name"        
                    onChange={handleChange} required />

                <label className="label">Last Name</label>
                    <input className="input-field" 
                    name="lname" 
                    value={inputs.lname} 
                    type="text" 
                    placeholder="Last Name"        
                    onChange={handleChange} required />

                <label className="label">User Name</label>
                    <input className="input-field" 
                    name="username" 
                    value={inputs.username} 
                    type="text" 
                    placeholder="User Name"        
                    onChange={handleChange} required />

                <label className="label">Email</label>
                    <input className="input-field" 
                    name="email" 
                    value={inputs.email} 
                    type="text" 
                    placeholder="Email"        
                    onChange={handleChange} required />

                <label className="label">Password</label>
                    <input className="input-field" 
                    name="password" 
                    value={inputs.password} 
                    type="text" 
                    placeholder="password"        
                    onChange={handleChange} required />
                <br/>
                <input className="input-btn" id="btn" type="submit" />
            </form>
        </div>   
    )
}

export default SignUp