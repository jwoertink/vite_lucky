/* eslint no-console:0 */

import { Application } from "@hotwired/stimulus"
import '../css/app.css';
import.meta.glob([
  '../images/**',
]);
import lucky_logo from "../images/lucky_logo.png";
import crystal_logo from "../images/crystal_logo.png";

let image = document.createElement("img")
image.src = lucky_logo
document.body.appendChild(image)

import Rails from "@rails/ujs";

import.meta.glob(['./js/controllers/*.js'])
window.Stimulus = Application.start()
import HelloController from "./controllers/hello_controller"
Stimulus.register("hello", HelloController)

window.onload = () => {
  console.log('Another test')
}
