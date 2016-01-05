import Foundation
import XCTest
@testable import Sugar

class Swizzled: NSObject {

  override class func initialize() {
    struct Static {
      static var token: dispatch_once_t = 0
    }

    if self !== Swizzled.self {
      return
    }

    dispatch_once(&Static.token) {
      Swizzler.swizzle("method", cls: self)
    }
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

