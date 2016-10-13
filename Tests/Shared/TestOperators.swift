import Foundation
import XCTest
import Sugar

class OperatorTests: XCTestCase {

  func testIfLetAssignment() {
    let hyper = URL(string: "hyper.no")!
    let faultyURL = URL(string: "\\/http")
    let nilURL: URL? = nil

    var testURL: URL?
    testURL ?= hyper
    XCTAssertEqual(testURL, hyper)

    testURL ?= faultyURL
    XCTAssertNotEqual(testURL, faultyURL)

    testURL ?= nilURL
    XCTAssertNotEqual(testURL, nilURL)
    
    XCTAssertEqual(testURL, hyper)
  }
}
