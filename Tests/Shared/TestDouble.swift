import Foundation
import XCTest
import Sugar

class DoubleTests: XCTestCase {

  func testComponent() {
    XCTAssertEqual(5.second, 5)
    XCTAssertEqual(5.minute, 5 * 60)
    XCTAssertEqual(5.hour, 5 * 60 * 60)
    XCTAssertEqual(5.day, 5 * 60 * 60 * 24)
    XCTAssertEqual(5.week, 5 * 60 * 60 * 24 * 7)
    XCTAssertEqual(5.month, 5 * 60 * 60 * 24 * 30)
    XCTAssertEqual(5.year, 5 * 60 * 60 * 24 * 365)

    XCTAssertEqualWithAccuracy(5.hour.ago.timeIntervalSince1970, Date(timeIntervalSinceNow: -5 * 60 * 60).timeIntervalSince1970, accuracy: 1)
    XCTAssertEqualWithAccuracy(5.hour.future.timeIntervalSince1970, Date(timeIntervalSinceNow: 5 * 60 * 60).timeIntervalSince1970, accuracy: 1)
  }
}
