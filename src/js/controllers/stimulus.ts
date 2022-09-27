import { Application } from "@hotwired/stimulus"
import { registerControllers } from 'stimulus-vite-helpers'

export function runStimulus(){
  const application = Application.start()
  const controllers = import.meta.globEager(['./**/*_controller.js', './**/*_controller.ts'])
  registerControllers(application, controllers)
}
