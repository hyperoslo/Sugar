import Foundation
import XCTest
import Sugar

class OnceTests: XCTestCase {

  func testOnce() {
    let once = Once()
    var count = 0

    (0..<10).forEach { _ in
      once.run {
        count += 1
      }
    }

    XCTAssertEqual(count, 1)
  }
}
