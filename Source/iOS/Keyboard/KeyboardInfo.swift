import UIKit

public struct KeyboardInfo {
  let height: CGFloat
  let duration: NSTimeInterval
  let curve: UIViewAnimationCurve

  init?(notification: NSNotification) {
    guard let userInfo = notification.userInfo,
      value = userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue,
      duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? NSTimeInterval,
      curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? Int
      else { return nil }

    self.height = value.CGRectValue().height
    self.duration = duration
    self.curve = UIViewAnimationCurve(rawValue: curve) ?? .Linear
  }

  var animation: UIViewAnimationOptions {
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
}