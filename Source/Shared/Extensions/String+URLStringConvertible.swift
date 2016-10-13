import Foundation

public protocol URLStringConvertible {
  var url: URL? { get }
  var string: String { get }
}

extension String: URLStringConvertible {

  public var url: URL? {
    return URL(string: self)
  }

  public var string: String {
    return self
  }
}
