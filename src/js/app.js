/* eslint no-console:0 */

import '../css/app.css';
import.meta.glob([
  '../images/**',
]);
import lucky_logo from "../images/crystal_logo.png";
console.log(lucky_logo)
let image = document.createElement("img")

image.src = lucky_logo

document.body.appendChild(image)

// importing like this, allows you to use asset("images/lucky_logo.png")
// import lucky_logo from "../images/lucky_logo.png";
// import vite_logo from "../images/vite_logo.png";
// not importing, still allows you to use directly 
// img src: "images/crystal_logo.png"

import Rails from "@rails/ujs";

window.onload = () => {
  console.log('Another test')
}
