import UIKit

public struct KeyboardInfo {
  public let frame: CGRect
  public let duration: TimeInterval
  public let curve: UIView.AnimationCurve

  public init?(notification: Notification) {
    guard let userInfo = (notification as NSNotification).userInfo,
      let value = userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue,
      let duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? TimeInterval,
      let curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? Int
      else { return nil }

    self.frame = value.cgRectValue
    self.duration = duration
    self.curve = UIView.AnimationCurve(rawValue: curve) ?? .linear
  }

  public var animation: UIView.AnimationOptions {
    switch curve {
    case .easeIn:
      return .curveEaseIn
    case .easeOut:
      return .curveEaseOut
    case .easeInOut:
      return UIView.AnimationOptions()
    default:
      return .curveLinear
    }
  }

  public var height: CGFloat {
    return frame.height
  }
}
