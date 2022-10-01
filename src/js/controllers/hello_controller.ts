// src/js/controllers/hello_controller.ts
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus.ts!")
  }
}
