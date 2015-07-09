import Foundation

struct UnitTesting {

  static var isRunning: Bool {
    return NSProcessInfo.processInfo().environment["XCInjectBundle"] != nil
  }

}
