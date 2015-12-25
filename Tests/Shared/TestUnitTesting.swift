import Foundation
import XCTest
@testable import Sugar

class UnitTestTests: XCTestCase {

  func testMeasure() {
    let timing = UnitTesting.measure {
      for _ in [0...1000] { }
    }
    XCTAssertTrue(timing > 0)
    XCTAssertTrue(timing < 1)
  }
}

