import Foundation
import XCTest
import Sugar

class DateTests: XCTestCase {

  internal override func setUp() {
    super.setUp()
    
    NSTimeZone.setDefaultTimeZone(TimeZone(secondsFromGMT: 0))
  }
  
  internal override func tearDown() {
    super.tearDown()
    
    NSTimeZone.setDefaultTimeZone(TimeZone.current)
  }
  
  func testComponent() {
    let date = Date(timeIntervalSince1970: 1456983015)
    
    XCTAssert(date.second == 15)
    XCTAssert(date.minute == 30)
    XCTAssert(date.hour == 5)
    XCTAssert(date.day == 3)
    XCTAssert(date.month == 3)
    XCTAssert(date.year == 2016)
    XCTAssert(date.weekday == 5)
  }
}
