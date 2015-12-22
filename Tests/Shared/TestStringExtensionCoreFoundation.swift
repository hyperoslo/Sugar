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

}