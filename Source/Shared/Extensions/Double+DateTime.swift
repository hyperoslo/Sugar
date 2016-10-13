import Foundation

public extension Double {

  var second: TimeInterval {
    return self
  }

  var minute: TimeInterval {
    return second * 60
  }

  var hour: TimeInterval {
    return minute * 60
  }

  var day: TimeInterval {
    return hour * 24
  }

  var week: TimeInterval {
    return day * 7
  }

  var month: TimeInterval {
    return day * 30
  }

  var year: TimeInterval {
    return day * 365
  }

  var ago: Date {
    return Date(timeIntervalSinceNow: -self)
  }

  var future: Date {
    return Date(timeIntervalSinceNow: self)
  }
}
