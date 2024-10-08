import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "name", "element" ]

  greet() {
    const element = this.nameTarget
    const name = element.value
    console.log(`Hello, ${name}!`)
  }

  toggle() {
    this.elementTargets.forEach(target => {
      target.classList.toggle("hidden");
    });
  }
}
