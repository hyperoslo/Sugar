import Foundation

public struct UnitTesting {

  public static var isRunning: Bool {
    return NSProcessInfo.processInfo().environment["XCInjectBundle"] != nil
  }
}
