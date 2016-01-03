import UIKit
import XCTest
@testable import Sugar

class ThenTests: XCTestCase {

  func testThen() {
    let view = UIView().then {
      $0.backgroundColor = UIColor.blackColor()
      $0.alpha = 0.5
    }

    XCTAssertEqual(view.alpha, 0.5)
    XCTAssertEqual(view.backgroundColor, UIColor.blackColor())
  }
}
