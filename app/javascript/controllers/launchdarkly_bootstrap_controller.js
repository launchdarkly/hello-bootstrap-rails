import { Controller } from "@hotwired/stimulus"
import { createClient } from "@launchdarkly/js-client-sdk"

export default class extends Controller {
  static values = {
    clientSideId: String,
    context: Object,
    bootstrap: Object
  }

  connect() {
    const context = this.contextValue
    const clientSideId = this.clientSideIdValue

    console.log("Clients initialized")

    const bootstrapData = this.bootstrapValue

    const client = createClient(clientSideId, context)
    const bootstrapClient = createClient(clientSideId, context)

    client.on("change", () => {
      console.log("Normal SDK updated")
      this.render(".normal", client)
    })

    bootstrapClient.on("change", () => {
      console.log("Bootstrapped SDK updated")
      this.render(".bootstrap", bootstrapClient)
    })

    client.start().then((result) => {
      if (result?.error) {
        console.error("Normal SDK failed to initialize:", result.error)
      }
      console.log("Normal SDK ready")
      this.render(".normal", client)
    })

    bootstrapClient.start({ bootstrap: bootstrapData }).then((result) => {
      if (result?.error) {
        console.error("Bootstrapped SDK failed to initialize:", result.error)
      }
      console.log("Bootstrapped SDK ready")
      this.render(".bootstrap", bootstrapClient)
    })
  }

  render(selector, targetClient) {
    const el = this.element.querySelector(selector)
    if (el) {
      el.innerHTML = JSON.stringify(targetClient.allFlags(), null, 2)
    }
  }
}
