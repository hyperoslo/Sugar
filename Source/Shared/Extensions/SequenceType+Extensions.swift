import Foundation

public extension SequenceType {
  
  public func findFirst(@noescape predicate: (Self.Generator.Element) -> Bool) -> Self.Generator.Element? {
    for element in self {
      if predicate(element) {
        return element
      }
    }

    return nil
  }
}
