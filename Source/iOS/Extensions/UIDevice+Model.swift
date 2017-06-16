import UIKit

public extension UIDevice {
    
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
