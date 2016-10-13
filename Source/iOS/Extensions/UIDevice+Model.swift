import UIKit

public extension UIDevice {

  public enum DeviceKind {
    case iPhone4
    case iPhone5
    case iPhone6
    case iPhone6Plus
    case iPad
    case unknown
  }

  public var kind: DeviceKind {
    guard userInterfaceIdiom == .phone else {
      return .iPad
    }

    let result: DeviceKind

    switch UIScreen.main.nativeBounds.height {
    case 960:
      result = .iPhone4
    case 1136:
      result = .iPhone5
    case 1334:
      result = .iPhone6
    case 2208:
      result = .iPhone6Plus
    default:
      result = .unknown
    }

    return result
  }
    
  public static func isPhone() -> Bool {
    return UIDevice().userInterfaceIdiom == .phone
  }

  public static func isPad() -> Bool {
    return UIDevice().userInterfaceIdiom == .pad
  }

  public static func isSimulator() -> Bool {
    return Simulator.isRunning
  }
}
