import Foundation
import XCTest
import Sugar

class StringTests: XCTestCase {

  let testString = "John Hyperseed"

  func testUppercase() {
    XCTAssertEqual("hello".uppercaseFirstLetter, "Hello")
    XCTAssertEqual("".uppercaseFirstLetter, "")
  }
}
