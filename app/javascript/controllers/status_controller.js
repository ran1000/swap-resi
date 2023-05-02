import { Controller } from "@hotwired/stimulus";
import { createConsumer } from "@rails/actioncable";

// Connects to data-controller="status"
export default class extends Controller {
  static values = { bookingId: Number };
  static targets = ["bookingStatus"];

  changeStatus(data) {
    this.bookingStatusTarget.innerHTML = data
  }

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "BookingChannel", id: this.bookingIdValue },
      { received: data => this.changeStatus(data) }
    )
  }
}
