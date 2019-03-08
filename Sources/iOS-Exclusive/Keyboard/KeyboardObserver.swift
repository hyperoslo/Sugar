import UIKit

open class KeyboardObserver: NSObject {

  let handler: KeyboardHandler

  public required init(handler: KeyboardHandler) {
    self.handler = handler
    super.init()
  }

  deinit {
    deactivate()
  }

  // MARK: - Notification

  open func activate() {
    NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardWillShow(_:)),
                                           name: UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardWillHide(_:)),
                                           name: UIResponder.keyboardWillHideNotification, object: nil)
  }

  open func deactivate() {
    NotificationCenter.default.removeObserver(self)
  }

  // MARK: - Handling

  @objc func handleKeyboardWillShow(_ notification: Notification) {
    guard let info = KeyboardInfo(notification: notification) else { return }

    self.handler.willShow(info)
  }

  @objc func handleKeyboardWillHide(_ notification: Notification) {
    guard let info = KeyboardInfo(notification: notification) else { return }

    self.handler.willHide(info)
  }
}
