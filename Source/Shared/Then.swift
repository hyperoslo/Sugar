import Foundation

public protocol Then {}
extension Then {

  public func then(@noescape block: Self -> Void) -> Self {
    block(self)
    return self
  }
}

extension NSObject: Then {}
