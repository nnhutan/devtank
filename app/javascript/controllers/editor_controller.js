import EditorJS from "@editorjs/editorjs";
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    console.log("EditorJS connected");
    const editor = new EditorJS({
      holder: this.element,
      autofocus: true,
      placeholder: "Let`s write an awesome story!",
    });
  }
}
