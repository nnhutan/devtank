import { defineConfig } from "vite";
import RubyPlugin from "vite-plugin-ruby";
import StimulusHMR from "vite-plugin-stimulus-hmr";
import FullReload from "vite-plugin-full-reload";
import { resolve } from "path";

export default defineConfig({
  plugins: [
    RubyPlugin(),
    StimulusHMR(),
    FullReload(["config/routes.rb", "app/views/**/*"]),
  ],
  resolve: {
    alias: {
      "@assets": resolve(__dirname, "app/assets"),
      "~bootstrap": resolve(__dirname, "node_modules/bootstrap"),
      "~bootstrap-icons": resolve(__dirname, "node_modules/bootstrap-icons"),
    },
  },
});
