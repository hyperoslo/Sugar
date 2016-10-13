import Foundation

public protocol Then {}
extension Then {

  public func then(_ block: (Self) -> Void) -> Self {
    block(self)
    return self
  }
}

extension NSObject: Then {}
