import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    console.log("Hello, Stimulus!");
    this.element.textContent =
      "Hello Stimulus! Edit me in assets/controllers/hello_controller.js";
  }
}
