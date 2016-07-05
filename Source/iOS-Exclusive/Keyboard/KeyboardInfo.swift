import UIKit

public struct KeyboardInfo {
  public let frame: CGRect
  public let duration: NSTimeInterval
  public let curve: UIViewAnimationCurve

  public init?(notification: NSNotification) {
    guard let userInfo = notification.userInfo,
      value = userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue,
      duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? NSTimeInterval,
      curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? Int
      else { return nil }

    self.frame = value.CGRectValue()
    self.duration = duration
    self.curve = UIViewAnimationCurve(rawValue: curve) ?? .Linear
  }

  public var animation: UIViewAnimationOptions {
    switch curve {
    case .EaseIn:
      return .CurveEaseIn
    case .EaseOut:
      return .CurveEaseOut
    case .EaseInOut:
      return .CurveEaseInOut
    default:
      return .CurveLinear
    }
  }

  public var height: CGFloat {
    return frame.height
  }
}
