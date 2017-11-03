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
                                                     name: NSNotification.Name.UIKeyboardWillShow, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardWillHide(_:)),
                                                     name: NSNotification.Name.UIKeyboardWillHide, object: nil)
  }

  open func deactivate() {
    NotificationCenter.default.removeObserver(self)
  }

  // MARK: - Handling

  func handleKeyboardWillShow(_ notification: Notification) {
    guard let info = KeyboardInfo(notification: notification) else { return }

    self.handler.willShow(info)
  }

  func handleKeyboardWillHide(_ notification: Notification) {
    guard let info = KeyboardInfo(notification: notification) else { return }

    self.handler.willHide(info)
  }
}
