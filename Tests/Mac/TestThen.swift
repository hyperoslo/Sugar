import AppKit
import XCTest
@testable import Sugar

class ThenTests: XCTestCase {

  func testThen() {
    let view = NSView().then {
      $0.alphaValue = 0.5
    }

    XCTAssertEqual(view.alphaValue, 0.5)
  }
}
