import UIKit

public struct KeyboardInfo {
  public let frame: CGRect
  public let duration: TimeInterval
  public let curve: UIView.AnimationCurve

  public init?(notification: Notification) {
    guard let userInfo = (notification as NSNotification).userInfo,
      let value = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue,
      let duration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? TimeInterval,
      let curve = userInfo[UIResponder.keyboardAnimationCurveUserInfoKey] as? Int
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
