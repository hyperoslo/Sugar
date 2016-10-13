import Foundation
import XCTest
import Sugar

class StringExtensionCoreFoundationTests: XCTestCase {

  func testStringLength() {
    var testString = "foo"

    XCTAssertEqual(testString.characters.count, testString.length)
    XCTAssertEqual(testString.lengthOfBytes(using: String.Encoding.utf8), testString.length)

    testString = "Hyper🚀"

    XCTAssertEqual(testString.characters.count, testString.length)
    XCTAssertNotEqual(testString.lengthOfBytes(using: String.Encoding.utf8), testString.length)
  }

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
