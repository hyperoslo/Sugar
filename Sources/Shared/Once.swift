import Foundation

public class Once {

  var already: Bool = false

  public init() {

  }

  public func run(_ block: () -> Void) {
    guard !already else {
      return
    }

    block()
    already = true
  }
}
