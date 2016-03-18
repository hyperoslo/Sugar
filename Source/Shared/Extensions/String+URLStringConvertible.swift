import Foundation

public protocol URLStringConvertible {
  var url: NSURL? { get }
  var string: String { get }
}

extension String: URLStringConvertible {

  public var url: NSURL? {
    return NSURL(string: self)
  }

  public var string: String {
    return self
  }
}
