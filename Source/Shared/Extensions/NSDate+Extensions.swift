import Foundation

extension NSDate : Comparable {}

public func < (lhs: NSDate, rhs: NSDate) -> Bool {
  return lhs.timeIntervalSince1970 < rhs.timeIntervalSince1970
}

public func <= (lhs: NSDate, rhs: NSDate) -> Bool {
  return lhs.timeIntervalSince1970 <= rhs.timeIntervalSince1970
}

public func >= (lhs: NSDate, rhs: NSDate) -> Bool {
  return lhs.timeIntervalSince1970 >= rhs.timeIntervalSince1970
}

public func > (lhs: NSDate, rhs: NSDate) -> Bool {
  return lhs.timeIntervalSince1970 > rhs.timeIntervalSince1970
}


// MARK: - Components

public extension NSDate {
  
  public func components(unit: NSCalendarUnit, retrieval: NSDateComponents -> Int) -> Int {
    let calendar = NSCalendar.currentCalendar()
    let components = calendar.components(unit, fromDate: self)
    return retrieval(components)
  }
  
  public var second: Int {
    return components(.Second) {
      return $0.second
    }
  }
  
  public var minute: Int {
    return components(.Minute) {
      return $0.minute
    }
  }
  
  public var hour: Int {
    return components(.Hour) {
      return $0.hour
    }
  }
  
  public var day: Int {
    return components(.Day) {
      return $0.day
    }
  }
  
  public var month: Int {
    return components(.Month) {
      return $0.month
    }
  }
  
  public var year: Int {
    return components(.Year) {
      return $0.year
    }
  }
  
  public var weekday: Int {
    return components(.Weekday) {
      return $0.weekday
    }
  }
}
