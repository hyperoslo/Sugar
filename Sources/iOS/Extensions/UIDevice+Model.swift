import UIKit

public extension UIDevice {
    
  static func isPhone() -> Bool {
    return UIDevice().userInterfaceIdiom == .phone
  }

  static func isPad() -> Bool {
    return UIDevice().userInterfaceIdiom == .pad
  }

  static func isSimulator() -> Bool {
    return Simulator.isRunning
  }
}
