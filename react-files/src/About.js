import React, { useEffect } from 'react';
// import { Link } from "react-router-dom";

function About() {
  useEffect(() => {
    window.scrollTo(0,0)
  }, []);

  return (
    <div className="About">
      <div className="container_12">
        <div className="grid_12"></div>
        <h1>WHO IS SMELL GOOD INC.?</h1>
        <p>Smell Good Inc. is about the fun and magic of fragrance. We designed Smell Good Inc. for the pickiest men to let you date luxury perfumes before marrying them.</p>
        <h2>HOW WE STARTED</h2>
        <p>
        Born out of frustration with the “perfume graveyard” — expensive bottles of designer perfume collecting dust on your dresser or cabinet — Smell Good Inc. was created to provide an alternative that is both practical and exciting.
        </p>
      </div>
    </div>
  );
}

export default About;
