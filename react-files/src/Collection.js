import React, {useState, useEffect } from 'react'
import { Link } from "react-router-dom";
// import { Link } from 'react-router-dom'

function Collection() {
  const [posts, setPosts] = useState([]);
  useEffect(() => {
    fetch('http://localhost:3216/api/colognes')
      .then((response) => response.json())
      .then((colognes) => {
        let postData = colognes.map((colognes) => (
          <div className='prod-div' key={colognes.Id}>
            <div className="product">              
              <Link to={`/collection/${colognes.Id}`}>
                <h2>{colognes.Brand}</h2>
                <h3>{colognes.Name}</h3>
                <p>{colognes.Type}</p>
              </Link>                    
            </div>
          </div>  
        ));
        setPosts(postData);
      });
  }, []);
  return (
    <>
      <div>
        <h2 className="collectionh2">Collection</h2>
      </div>
      <div className="container_12 prod-div">
        <div className="grid_3 product">
          <div className="product"></div>
          {posts}
        </div>
      </div>
    </>
  );
}
export default Collection