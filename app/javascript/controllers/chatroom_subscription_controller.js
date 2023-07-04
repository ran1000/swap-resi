import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages"]

  connect() {
    // Subscribe to the chatroom with the id from the data attribute
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      // Called when there's incoming data on the websocket for this channel
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribe to the chatroom with the id ${this.chatroomIdValue}.`)
  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }

  #insertMessageAndScrollDown(data) {
    // Insert the new message at the bottom of the list of messages
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    // Scroll down to the newly added message
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
}
