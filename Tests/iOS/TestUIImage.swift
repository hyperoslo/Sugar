import UIKit
import XCTest
import Sugar

class UIImageTests: XCTestCase {

  func testUIImage() {
    XCTAssertEqual(UIImage().hasContent, false)
    XCTAssertEqual(UIImage(color: UIColor.redColor()).hasContent, true)
  }
}
