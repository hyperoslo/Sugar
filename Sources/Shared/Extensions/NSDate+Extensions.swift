import Foundation

// MARK: - Components

public extension Date {
  
  func components(_ unit: NSCalendar.Unit, retrieval: (DateComponents) -> Int) -> Int {
    let calendar = Calendar.current
    let components = (calendar as NSCalendar).components(unit, from: self)

    return retrieval(components)
  }
  
  var second: Int {
    return components(.second) {
      return $0.second ?? 0
    }
  }
  
  var minute: Int {
    return components(.minute) {
      return $0.minute ?? 0
    }
  }
  
  var hour: Int {
    return components(.hour) {
      return $0.hour ?? 0
    }
  }
  
  var day: Int {
    return components(.day) {
      return $0.day ?? 0
    }
  }
  
  var month: Int {
    return components(.month) {
      return $0.month ?? 0
    }
  }
  
  var year: Int {
    return components(.year) {
      return $0.year ?? 0
    }
  }
  
  var weekday: Int {
    return components(.weekday) {
      return $0.weekday ?? 0
    }
  }
}
