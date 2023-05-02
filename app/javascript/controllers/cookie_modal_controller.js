import { Controller } from "@hotwired/stimulus";
import * as bootstrap from "bootstrap";

window.bootstrap = bootstrap;

// Connects to data-controller="cookie-modal"
export default class extends Controller {
  connect() {
  }

  hideModal() {
    let consentModal = document.getElementById("cookieModal");
    if (consentModal) {
      let modalToHide = bootstrap.Modal.getInstance(consentModal);
      modalToHide.hide();
    }
  }
}
