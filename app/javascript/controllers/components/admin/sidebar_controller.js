import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["toggleButton"];

  connect() {
    console.log("hello this is sidebar controller");

    this.element.addEventListener("mouseenter", () => {
      console.log("mouse enter");
      if (this.element.classList.contains("g-sidenav-pinned")) {
        return;
      }
      this.open();
    });

    this.element.addEventListener("mouseleave", () => {
      console.log("mouse leave");
      if (this.element.classList.contains("g-sidenav-pinned")) {
        return;
      }
      this.close();
    });
  }

  toggle() {
    this.toggleButtonTarget.classList.toggle("active");
    if (this.element.classList.contains("g-sidenav-pinned")) {
      this.unpin();
    } else {
      this.pin();
    }
  }

  open() {
    this.element.classList.remove("g-sidenav-hidden");
  }

  close() {
    this.element.classList.add("g-sidenav-hidden");
  }

  pin() {
    this.element.classList.add("g-sidenav-pinned");
  }

  unpin() {
    this.element.classList.remove("g-sidenav-pinned");
  }
}
