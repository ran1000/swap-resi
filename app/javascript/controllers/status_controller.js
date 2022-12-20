import { Controller } from "@hotwired/stimulus";
import { createConsumer } from "@rails/actioncable";

// Connects to data-controller="status"
export default class extends Controller {
  static values = { bookingId: Number };
  static targets = ["bookingStatus"];

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "BookingChannel", id: this.bookingIdValue },
      { received: data => console.log(data) }
    )
    console.log(`Subscribe to the booking with the id ${this.bookingIdValue}`);
    console.log(this.bookingStatusTarget);
    // console.log(this.element);
    // console.log(this.declineTarget);
    // console.log(this.acceptTarget);
  }
}
