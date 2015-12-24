import Foundation
import QuartzCore

public struct UnitTesting {

  public static var isRunning: Bool {
    return NSProcessInfo.processInfo().environment["XCInjectBundle"] != nil
  }

  public static func measure(closure: () -> Void) -> Float {
    let start = CACurrentMediaTime()
    closure()
    let end = CACurrentMediaTime()

    return Float(end - start)
  }
}
