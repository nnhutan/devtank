import { Controller } from "@hotwired/stimulus";
import EditorJS from "@editorjs/editorjs";
import Header from "@editorjs/header";
import RawTool from "@editorjs/raw";
import SimpleImage from "@editorjs/simple-image";
import Checklist from "@editorjs/checklist";
import List from "@editorjs/list";
import Embed from "@editorjs/embed";
import Quote from "@editorjs/quote";
import Table from "@editorjs/table";
import Underline from "@editorjs/underline";
import InlineCode from "@editorjs/inline-code";
import Paragraph from "@editorjs/paragraph";
import CodeTool from "@editorjs/code";

export default class extends Controller {
  connect() {
    console.log("EditorJS connected");
    const editor = new EditorJS({
      holder: this.element,
      autofocus: true,
      placeholder: "Let`s write an awesome story!",
      tools: {
        header: Header,
        raw: RawTool,
        image: {
          class: SimpleImage,
          inlineToolbar: true,
          config: {
            placeholder: "Paste image URL",
          },
        },
        checklist: {
          class: Checklist,
          inlineToolbar: true,
        },
        list: {
          class: List,
          inlineToolbar: true,
          config: {
            defaultStyle: "unordered",
          },
        },
        embed: {
          class: Embed,
          inlineToolbar: true,
          config: {
            services: {
              youtube: true,
              coub: true,
            },
          },
        },
        quote: Quote,
        table: Table,
        underline: Underline,
        inlineCode: {
          class: InlineCode,
          shortcut: "CMD+SHIFT+M",
        },
        paragraph: {
          class: Paragraph,
          inlineToolbar: true,
        },
        code: CodeTool,
      },
    });
  }
}
