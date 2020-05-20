import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";

function CollectionSingle(props) {
    const [post, setPost] = useState(null);
    useEffect(() => {
        console.log(props.match);        
         const { id } = props.match.params;      
        fetch(`http://localhost:3216/api/colognes/${id}`)
        .then((response) => response.json())
        .then((cologne) => {
            let postData = (                
                <div className="prod-div" >          
                    <div className="product" key={cologne.id}>
                        {/* <h3>{cologne.Id}</h3> */}
                        <h3>{cologne.Brand}</h3>
                        <h4>{cologne.Name}</h4>
                        <p>{cologne.Type}</p>
                    </div>          
                    <div className="desc">"Descrption"</div>
                    <br/>
                    <a href="http://localhost:3216/collection/" className="back">Back to Cologne</a>
                </div>    
            )
            setPost(postData)            
        })
    }, []);
    return (
        <div>
            <div className="container_12">
                <div className="grid_12">
                    <div className="CollectionSingle">   
                    <h1>{post}</h1>
                                        
                    </div>
                </div>
            </div>
        </div>
    )
}

export default CollectionSingle;
// class CollectionSingle extends Component{
//     constructor(props) {
    //       super(props);
    // import React, { Component } from 'react';
    //       this.state = {
//         cologne: []
//       }
//     }

//     componentDidMount() {
    //       fetch(`http://localhost:3002/api/cologne/${id}`)
//         .then(res => res.json())
//         .then(cologne => this.setState({cologne}, () =>console.log(cologne)));
//       }
        
//     render() {
//       return(
//         <div>
//           {this.state.cologne.map(cologne => 
//             <div className="container_12 prod-div">          
//               <div className="product grid_3" >
//                 <Link to={`cologne/${cologne.id}`} key={cologne.id}>
//                   <h2>{cologne.Brand}</h2>
//                   <h3>{cologne.Name}</h3>
//                   <p>{cologne.Type}</p>
//                 </Link>                 
//               </div>          
//             </div>
//           )}
//         </div>
//       )
//     }
//   }
//   export default CollectionSingle