import UIKit

public class KeyboardObserver: NSObject {

  let handler: KeyboardHandler

  public required init(handler: KeyboardHandler) {
    self.handler = handler
    super.init()
  }

  deinit {
    deactivate()
  }

  // MARK: - Notification

  public func activate() {
    NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(handleKeyboardWillShow(_:)),
                                                     name: UIKeyboardWillShowNotification, object: nil)
    NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(handleKeyboardWillHide(_:)),
                                                     name: UIKeyboardWillHideNotification, object: nil)
  }

  public func deactivate() {
    NSNotificationCenter.defaultCenter().removeObserver(self)
  }

  // MARK: - Handling

  func handleKeyboardWillShow(notification: NSNotification) {
    guard let info = KeyboardInfo(notification: notification) else { return }

    self.handler.willShow(info)
  }

  func handleKeyboardWillHide(notification: NSNotification) {
    guard let info = KeyboardInfo(notification: notification) else { return }

    self.handler.willHide(info)
  }
}
