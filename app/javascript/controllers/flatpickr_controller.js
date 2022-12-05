import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"
// Import the rangePlugin from the flatpickr library
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = ["startDate", "endDate"]

  connect() {
    console.log("Running Stimulus");
    // Without Range
    // flatpickr(this.startDateTarget, {
    //   altInput: true
    // })
    // flatpickr(this.endDateTarget, {
    //   altInput: true
    // })
    // Range
    flatpickr(this.startDateTarget, {
      // enableTime: true,
      plugins: [new rangePlugin({ input: "#end_date" })]
    })
    flatpickr(this.endDateTarget, {})
  }
}
