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

  close(event) {
    // event.detail.successは、レスポンスが成功ならtrueを返す
    // バリデーションエラー時はモーダルを閉じたくないので、成功時のみ閉じる
    if (event.detail.success) {
      // モーダルを閉じる
      this.modal.hide()
    }
  }
}
