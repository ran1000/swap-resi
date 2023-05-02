import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

window.onload = function() {
  window.scrollTo(0, 0);
}

export { application }
