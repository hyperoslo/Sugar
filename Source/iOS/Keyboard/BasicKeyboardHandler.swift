import UIKit

public class BasicKeyboardHandler: KeyboardHandler {

  public init() {}

  public func willShow(info: KeyboardInfo) {
    UIView.animateWithDuration(info.duration, delay: 0, options: info.animation, animations: { [weak self] in
      self?.show?(height: info.height)
    }, completion: nil)
  }

  public func willHide(info: KeyboardInfo) {
    UIView.animateWithDuration(info.duration, delay: 0, options: info.animation, animations: { [weak self] in
      self?.hide?()
    }, completion: nil)
  }

  public var show: ((height: CGFloat) -> Void)?
  public var hide: (() -> Void)?
}
