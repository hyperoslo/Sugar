import UIKit

public struct KeyboardInfo {
  public let frame: CGRect
  public let duration: TimeInterval
  public let curve: UIViewAnimationCurve

  public init?(notification: Notification) {
    guard let userInfo = (notification as NSNotification).userInfo,
      let value = userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue,
      let duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? TimeInterval,
      let curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? Int
      else { return nil }

    self.frame = value.cgRectValue
    self.duration = duration
    self.curve = UIViewAnimationCurve(rawValue: curve) ?? .linear
  }

  public var animation: UIViewAnimationOptions {
    switch curve {
    case .easeIn:
      return .curveEaseIn
    case .easeOut:
      return .curveEaseOut
    case .easeInOut:
      return UIViewAnimationOptions()
    default:
      return .curveLinear
    }
  }

  public var height: CGFloat {
    return frame.height
  }
}
