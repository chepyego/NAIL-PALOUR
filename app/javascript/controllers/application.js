import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// let newItem = document.getElementById('new-content');

// let para = document.createElement("p")
// let textOne = document.createTextNode("Jemimah chepyego");
// let nowApp = textOne.appendChild(para);
// newItem.appendChild(nowApp);
// console.log("jemimah");
