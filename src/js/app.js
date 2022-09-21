/* eslint no-console:0 */

import '../css/app.css';
// importing like this, allows you to use asset("images/lucky_logo.png")
import lucky_logo from "../images/lucky_logo.png";
// not importing, still allows you to use directly 
// img src: "images/crystal_logo.png"

import Rails from "@rails/ujs";

window.onload = () => {
  console.log('Another test')
}
