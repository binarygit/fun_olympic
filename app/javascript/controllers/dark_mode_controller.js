import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log('Hello')
  }

  toggle() {
    document.body.classList.toggle("dark-theme");
  }
}
