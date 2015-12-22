import Foundation
import XCTest
@testable import Sugar

class OperatorTests: XCTestCase {

  func testIfLetAssignment() {
    let hyper = NSURL(string: "hyper.no")!
    let faultyURL = NSURL(string: "\\/http")
    let nilURL: NSURL? = nil

    var testURL: NSURL?
    testURL ?= hyper
    XCTAssertEqual(testURL, hyper)

    testURL ?= faultyURL
    XCTAssertNotEqual(testURL, faultyURL)

    testURL ?= nilURL
    XCTAssertNotEqual(testURL, nilURL)
    
    XCTAssertEqual(testURL, hyper)
  }
}
