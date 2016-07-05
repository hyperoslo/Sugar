import UIKit

public class ConstraintKeyboardHandler: KeyboardHandler {

  public var constraint: NSLayoutConstraint?
  public weak var view: UIView?

  public init() {}

  public func willShow(info: KeyboardInfo) {
    constraint?.constant = -info.height
    UIView.animateWithDuration(info.duration, delay: 0, options: info.animation, animations: { [weak self] in
      self?.view?.layoutIfNeeded()
    }, completion: nil)
  }

  public func willHide(info: KeyboardInfo) {
    constraint?.constant = 0
    UIView.animateWithDuration(info.duration, delay: 0, options: info.animation, animations: { [weak self] in
      self?.view?.layoutIfNeeded()
    }, completion: nil)
  }
}
