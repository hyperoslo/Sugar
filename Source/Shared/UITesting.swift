import Foundation

public struct UITesting {

  public static var isRunning: Bool {
    return NSProcessInfo.processInfo().arguments.contains("-ui_testing")
  }
}
