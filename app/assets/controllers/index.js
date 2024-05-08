import { Application } from "@hotwired/stimulus";
// import { registerControllers } from "stimulus-vite-helpers";

const application = Application.start();

// Configure Stimulus development experience
application.debug = false;
const controllers = import.meta.globEager("./**/*_controller.js");
// registerControllers(application, controllers);
for (let path in controllers) {
  let module = controllers[path];
  let name = path.match(/\.\/(.+)_controller\.js$/)[1].replaceAll("/", "--");
  application.register(name, module.default);
}
window.Stimulus = application;
