import HelloController from "./hello_controller"
window.Stimulus.register("hello", HelloController)
window.Stimulus = Application.start()