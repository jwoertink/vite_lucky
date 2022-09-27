/* eslint no-console:0 */

import '../css/app.css';
import.meta.glob([
  '../images/**',
]);
import crystal_logo from "../images/crystal_logo.png";

let image = document.createElement("img")
image.src = crystal_logo
document.body.appendChild(image)

import Rails from "@rails/ujs";

import { runStimulus } from './controllers/stimulus.js'
runStimulus()