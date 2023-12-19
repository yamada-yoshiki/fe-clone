import { Controller } from "@hotwired/stimulus"
import { Modal } from "bootstrap"

// Connects to data-controller="question-modal"
export default class extends Controller {
  connect() {
    // モーダル生成
    this.modal = new Modal(this.element)

    // モーダルを表示する
    this.modal.show()
  }

  close() {
    this.modal.hide()
  }
}
