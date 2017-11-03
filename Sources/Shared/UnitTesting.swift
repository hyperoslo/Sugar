import Foundation
import QuartzCore

public struct UnitTesting {

  public static var isRunning: Bool {
    return ProcessInfo.processInfo.environment["XCInjectBundle"] != nil
  }

  public static func measure(_ closure: () -> Void) -> Float {
    let start = CACurrentMediaTime()
    closure()
    let end = CACurrentMediaTime()

    return Float(end - start)
  }
}
