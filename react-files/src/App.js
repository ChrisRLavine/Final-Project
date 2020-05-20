import React from "react";
import { Switch, Route } from "react-router-dom";
import Header from "./Header";
import Home from "./Home";
import About from "./About";
import Collection from "./Collection";
import CollectionSingle from "./CollectionSingle";
import SignUp from "./SignUp";
import Services from "./Services";
import Footer from "./Footer";
import Error from "./Error";
 
function App() {
  return (
    <>
      <Header />
      <Switch>
        <Route path="/" component={Home} exact />
        <Route path="/about" component={About} />
        <Route path="/collection/:id" component={CollectionSingle} />
        <Route path="/collection" component={Collection} />
        <Route path="/services" component={Services} />
        <Route path="/signup" component={SignUp} />
        <Route component={Error} />
      </Switch>
      <Footer />
    </>
  );
}

export default App;
