import React from "react";
import { Link } from "react-router-dom";

function Footer() {
  return (
    <>
        <div className="container"></div>
          <div className="footer-background">
            <div className="abt-ftr">
              <h2>About Smell Good Inc.</h2>
              <ul>
                <li>About Us</li>
                <li>Blogger Program</li>
                <li>Affiliate Program</li>
                <li>Blog</li>
                <li>Contact Us</li>
                <li>Careers</li>
                <li>Reviews</li>
              </ul>
            </div>
            <div className="shop-div">
              <h2>Shop</h2>
              <ul>
                <li>Send a Gift</li>
                <li>Shop Colognes</li>
              </ul>
            </div>
            <div className="raf-div">
              <div>
                <h2>Refer a Friend</h2>     
              </div>
              <div>
                <p>Refer a friend and recieve 20% off for each referal.</p>
              </div>
              <div>
                <form>
                  <input type="text" placeholder="email" />
                  <input type="submit" value="submit" />
                </form>
              </div>
              <div>
                <Link to="/" className="back-to-home">Back to home</Link>
              </div>  
            </div>
          </div>
        <div className="copy container">
          <div className="contactdiv">
              <h2 id="contactme" className="contact">Contact Us</h2>
              {<Link to="https://github.com/ChrisRLavine"><i className="fab fa-github social"></i></Link>}       
              {<Link to="https://www.linkedin.com/in/christopher-lavine/"><i className="fab fa-linkedin-in social"></i></Link>}
              {<Link to="chrisr.lavine@gmail.com"><i className="far fa-envelope social"></i></Link>}   
          </div>
        </div>
        <div className="copyback ">
          <div className="copy container_12 ">
            <div className="grid_12 ">
              <p style={{textAlign: "center", fontSize: "12px", marginBottom: "0"}}>SMELL GOOD INC. &copy; 2012 &middot; PRIVACY POLICY </p>
            </div>
          </div>
        </div>
    </>
  );
}

export default Footer;