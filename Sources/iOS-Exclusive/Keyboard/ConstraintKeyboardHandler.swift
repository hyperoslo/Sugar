import UIKit

open class ConstraintKeyboardHandler: KeyboardHandler {

  open var constraint: NSLayoutConstraint?
  open weak var view: UIView?

  public init() {}

  open func willShow(_ info: KeyboardInfo) {
    constraint?.constant = -info.height
    UIView.animate(withDuration: info.duration, delay: 0, options: info.animation, animations: { [weak self] in
      self?.view?.layoutIfNeeded()
    }, completion: nil)
  }

  open func willHide(_ info: KeyboardInfo) {
    constraint?.constant = 0
    UIView.animate(withDuration: info.duration, delay: 0, options: info.animation, animations: { [weak self] in
      self?.view?.layoutIfNeeded()
    }, completion: nil)
  }
}
