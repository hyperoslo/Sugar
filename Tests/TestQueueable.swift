import Foundation
import XCTest
@testable import Sugar

struct Object: Queueable {

  func process() -> Bool { return true }
}

struct SecondObject: Queueable {

  func process() -> Bool { return false }
}

class QueueableTests: XCTestCase {

  func testQueueable() {
    var testQueue = [Object(), Object()]
    XCTAssertTrue(testQueue.count == 2)
    testQueue.processQueue()
    XCTAssertTrue(testQueue.count == 0)

    var secondTestQueue = [SecondObject(), SecondObject()]
    XCTAssertTrue(secondTestQueue.count == 2)
    secondTestQueue.processQueue()
    XCTAssertTrue(secondTestQueue.count == 2)
  }

}
