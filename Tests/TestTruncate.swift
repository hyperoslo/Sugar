import Foundation
import XCTest
@testable import Sugar

class StringTruncateTests: XCTestCase {

  let testString = "John Hyperseed"

  func testTruncate() {
    XCTAssertEqual(testString.truncate(4), "John...")
    XCTAssertNotEqual(testString.truncate(5), "John...")
  }

  func testTruncateSuffix() {
    XCTAssertEqual(testString.truncate(4, suffix: "-"), "John-")
  }

  func testTruncateWithShortString() {
    XCTAssertEqual(testString.truncate(20), testString)
  }
}
