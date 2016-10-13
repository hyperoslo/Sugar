import UIKit

open class BasicKeyboardHandler: KeyboardHandler {

  public init() {}

  open func willShow(_ info: KeyboardInfo) {
    UIView.animate(withDuration: info.duration, delay: 0, options: info.animation, animations: { [weak self] in
      self?.show?(info.height)
    }, completion: nil)
  }

  open func willHide(_ info: KeyboardInfo) {
    UIView.animate(withDuration: info.duration, delay: 0, options: info.animation, animations: { [weak self] in
      self?.hide?()
    }, completion: nil)
  }

  open var show: ((_ height: CGFloat) -> Void)?
  open var hide: (() -> Void)?
}
