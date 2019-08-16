import Foundation
import XCTest
import Sugar

class StringExtensionCoreFoundationTests: XCTestCase {

  func testStringReplace() {
    let stringA = "-foo-"
    let stringB = ":foo:"
    let stringC = stringA.replace("-", with: ":")

    XCTAssertEqual(stringB, stringC)
    XCTAssertEqual(stringC, stringA.replacingOccurrences(of: "-", with: ":"))
  }

  func testStringSplit() {
    let testString = "root/path/file"
    let parts = testString.split("/")
    XCTAssertEqual(parts.count, 3)
  }
}
