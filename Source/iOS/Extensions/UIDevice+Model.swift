import UIKit

public extension UIDevice {

  public enum DeviceKind {
    case iPhone4
    case iPhone5
    case iPhone6
    case iPhone6Plus
    case iPad
    case Unknown
  }

  public var kind: DeviceKind {
    guard userInterfaceIdiom == .Phone else {
      return .iPad
    }

    let result: DeviceKind

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
    
    public static func isPhone() -> Bool {
        return UIDevice().userInterfaceIdiom == .Phone
    }

    public static func isPad() -> Bool {
        return UIDevice().userInterfaceIdiom == .Pad
    }

    public static func isSimulator() -> Bool {
        return Simulator.isRunning
    }
}
