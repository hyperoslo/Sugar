import Foundation

public struct UITesting {

  public static var isRunning: Bool {
    return ProcessInfo.processInfo.arguments.contains("-ui_testing")
  }
}
