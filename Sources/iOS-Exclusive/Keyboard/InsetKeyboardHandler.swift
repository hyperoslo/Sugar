import UIKit

open class InsetKeyboardHandler: KeyboardHandler {

  open weak var scrollView: UIScrollView?
  open var originalInsets: UIEdgeInsets = .zero

  public init() {}

  open func willShow(_ info: KeyboardInfo) {
    originalInsets = scrollView?.contentInset ?? .zero
    var insets = originalInsets
    insets.bottom = info.height

    UIView.animate(withDuration: info.duration, delay: 0, options: info.animation, animations: { [weak self] in
      self?.scrollView?.contentInset = insets
      self?.scrollView?.scrollIndicatorInsets = insets
    }, completion: nil)
  }

  open func willHide(_ info: KeyboardInfo) {

    let insets = originalInsets
    UIView.animate(withDuration: info.duration, delay: 0, options: info.animation, animations: { [weak self] in
      self?.scrollView?.contentInset = insets
      self?.scrollView?.scrollIndicatorInsets = insets
    }, completion: nil)
  }
}
