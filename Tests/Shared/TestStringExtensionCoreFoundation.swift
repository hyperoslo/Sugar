import Foundation
import XCTest
@testable import Sugar

class StringExtensionCoreFoundationTests: XCTestCase {

  func testStringLength() {
    var testString = "foo"

    XCTAssertEqual(testString.characters.count, testString.length)
    XCTAssertEqual(testString.lengthOfBytesUsingEncoding(NSUTF8StringEncoding), testString.length)

    testString = "Hyper🚀"

    XCTAssertEqual(testString.characters.count, testString.length)
    XCTAssertNotEqual(testString.lengthOfBytesUsingEncoding(NSUTF8StringEncoding), testString.length)
  }

  func testStringReplace() {
    let stringA = "-foo-"
    let stringB = ":foo:"
    let stringC = stringA.replace("-", with: ":")

    XCTAssertEqual(stringB, stringC)
    XCTAssertEqual(stringC, stringA.stringByReplacingOccurrencesOfString("-", withString: ":"))
  }

  func testStringSplit() {
    let testString = "root/path/file"
    let parts = testString.split("/")
    XCTAssertEqual(parts.count, 3)
  }
}
