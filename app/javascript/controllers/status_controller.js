import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="status"
export default class extends Controller {
  static targets = ["accept", "decline"]

  connect() {
  }

  acceptStatus() {
  }

  declineStatus() {
    console.log("declined")
  }
}
