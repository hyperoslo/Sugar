import UIKit

public extension UIDevice {

  public enum Model: String {
    case iPhone4
    case iPhone5
    case iPhone6
    case iPhone6Plus
    case iPad
    case Unknown
  }

  public var model: Model {
    guard UIDevice().userInterfaceIdiom == .Phone else {
      return .iPad
    }

    let result: Model

    switch UIScreen.mainScreen().nativeBounds.height {
    case 960:
      result = .iPhone4
    case 1136:
      result = .iPhone5
    case 1334:
      result = .iPhone6
    case 2208:
      result = .iPhone6Plus
    default:
      result = .Unknown
    }

    return result
  }
}
