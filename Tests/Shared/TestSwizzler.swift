import Foundation
import XCTest
import Sugar

class Swizzled: NSObject {

  private static var __once: () = {
    Swizzler.swizzle("method", cls: classForCoder())
  }()

  override class func initialize() {
    struct Static {
      static var token: Int = 0
    }

    if self !== Swizzled.self {
      return
    }

    _ = Swizzled.__once
  }

  dynamic func method() -> Bool {
    return true
  }

  func swizzled_method() -> Bool {
    return false
  }
}

class SwizzleTests: XCTestCase {

  func testSwizzleInstanceMethod() {
    let object = Swizzled()
    XCTAssertFalse(object.method())
  }
}

