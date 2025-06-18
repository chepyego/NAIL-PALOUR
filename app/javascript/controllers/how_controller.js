import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["name"]
    connect(){
      console.log("hey jemimah")
    }
  greet() {
    const inputName = this.nameTarget.value
    alert(`hello, ${inputName}`)
  }
}
