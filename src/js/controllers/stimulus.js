import { Application } from "@hotwired/stimulus"
import HelloController from "./hello_controller"
/*

window.onload = () => {
  window.Stimulus = Application.start()
  Stimulus.register("hello", HelloController)
}
*/

export function initialize(){
  window.Stimulus = Application.start()
  Stimulus.register("hello", HelloController)
}