import Foundation

extension Range {

  func contains(value: Element) -> Bool {
    for x in self {
      if x == value { return true }
    }

    return false
  }
}
