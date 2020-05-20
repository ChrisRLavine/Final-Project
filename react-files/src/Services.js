import React, { useState, useEffect } from 'react';
// import { Link } from "react-router-dom";

function Services() {
    const [ page, setPage ] = useState({});
    const [inputs, setInputs] = useState({
        fname: "",
        lname: "",
        username: "",
        message: ""
    });

    const handleSubmit = (event) => {
        event.preventDefault();
        fetch("http://localhost:3216/api/service/create", {
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
            username:"",
            message:""
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
                <h1>Help Smell Good Inc. Help YOU!</h1>
                <p>Contact us so that one our 24/hour staff can help with any question or concern.</p>            
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

                <label className="label">Message</label>
                    <input className="input-field" 
                    name="message" 
                    value={inputs.message} 
                    type="textbox" 
                    placeholder="Message"        
                    onChange={handleChange} required />
                <br/>
                <input className="input-btn" id="btn" type="submit" />
            </form>
        </div>   
    )
}
export default Services
        // return (
        //     <>
        //     <div className="Footer">
        //         <div className="clear-float"> </div>
        //             <div className="mainfooter container_12 ">
        //                 <div className="grid_4 ">
        //                     <div className="services ">
        //                     <h2> SERVICES </h2>
        //                     <ul>
        //                         <li> Lorem ipsum dolor sit. </li>
        //                         <li> Rerum sint eaque perspiciatis! </li>
        //                         <li> Doloremque nihil cupiditate consequuntur. </li>
        //                         <li> Quae illo a blanditiis ? </li>
        //                         <li> Possimus nemo veniam nesciunt. </li>
        //                         <li> Quo expedita reiciendis beatae ? </li>
        //                         <li> Explicabo officiis obcaecati necessitatibus. </li>
        //                         <li> Nihil dolore soluta consequuntur! </li>
        //                     </ul>
        //                     <Link to="#more "> More </Link>
        //                 </div>
        //             </div>
        //             <div className="opportunities grid_4">
        //                 <div>
        //                     <h2> OPPORTUNTIES </h2>
        //                     <ul>
        //                         <li>
        //                             Lorem ipsum dolor sit.
        //                             <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.Laboriosam harum voluptatum nemo, rem perferendis aliquid explicabo quos veniam voluptates suscipit!</p>
        //                         </li>
        //                         <li>
        //                             Lorem ipsum dolor sit, amet consectetur adipisicing elit.
        //                             <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.Harum, doloribus ? Odio minima provident fugiat iste eos tempore blanditiis eaque nulla.</p>
        //                         </li>
        //                     </ul>
        //                 </div>
        //                 <Link to="#more "> More </Link>
        //             </div>
        //         </div>
        //     </div>
        //     </>
        // )

