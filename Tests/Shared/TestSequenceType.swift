import Foundation
import XCTest
import Sugar

class SequenceTypeTests: XCTestCase {

  func testFindFirst() {
    let items = Array(0..<100)
    XCTAssertEqual(items.findFirst({ $0 > 10 }), 11)
  }
}
