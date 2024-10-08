import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "element" ]

  toggle() {
    this.elementTargets.forEach(target => {
      target.classList.toggle("hidden");
    });
  }
}