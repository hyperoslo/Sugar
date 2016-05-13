import Foundation

public extension Double {

  var second: NSTimeInterval {
    return self
  }

  var minute: NSTimeInterval {
    return second * 60
  }

  var hour: NSTimeInterval {
    return minute * 60
  }

  var day: NSTimeInterval {
    return hour * 24
  }

  var week: NSTimeInterval {
    return day * 7
  }

  var month: NSTimeInterval {
    return day * 30
  }

  var year: NSTimeInterval {
    return day * 365
  }

  var ago: NSDate {
    return NSDate(timeIntervalSinceNow: -self)
  }

  var future: NSDate {
    return NSDate(timeIntervalSinceNow: self)
  }
}
