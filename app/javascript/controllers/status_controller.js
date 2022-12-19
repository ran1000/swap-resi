import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="status"
export default class extends Controller {
  static targets = ["accept", "decline"]

  connect() {
    // console.log(this.element);
    // console.log(this.declineTarget);
    // console.log(this.acceptTarget);
  }

  acceptStatus(event) {
    event.preventDefault();
    // console.log(this.acceptTarget)
    fetch(this.acceptTarget.action, {
      method: "PATCH",
      headers: { "Accept": "application/json" },
      // the body must contain the accepted or declined
      body: new FormData(this.acceptTarget)
    })
      .then(res => res.json())
      .then((data) => {
        console.log(data);
      })
  }

  declineStatus() {
    console.log("declined")
  }
}
