import UIKit

public class InsetKeyboardHandler: KeyboardHandler {

  public weak var scrollView: UIScrollView?
  public var originalInsets: UIEdgeInsets = UIEdgeInsetsZero

  public init() {}

  public func willShow(info: KeyboardInfo) {
    originalInsets = scrollView?.contentInset ?? UIEdgeInsetsZero
    var insets = originalInsets
    insets.bottom = info.height

    UIView.animateWithDuration(info.duration, delay: 0, options: info.animation, animations: { [weak self] in
      self?.scrollView?.contentInset = insets
      self?.scrollView?.scrollIndicatorInsets = insets
    }, completion: nil)
  }

  public func willHide(info: KeyboardInfo) {

    let insets = originalInsets
    UIView.animateWithDuration(info.duration, delay: 0, options: info.animation, animations: { [weak self] in
      self?.scrollView?.contentInset = insets
      self?.scrollView?.scrollIndicatorInsets = insets
    }, completion: nil)
  }
}
