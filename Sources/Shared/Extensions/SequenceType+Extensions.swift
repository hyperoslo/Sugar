import Foundation

public extension Sequence {
  
  func findFirst(_ predicate: (Self.Iterator.Element) -> Bool) -> Self.Iterator.Element? {
    for element in self {
      if predicate(element) {
        return element
      }
    }

    return nil
  }
}
