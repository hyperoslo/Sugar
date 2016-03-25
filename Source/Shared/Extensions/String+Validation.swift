import Foundation

public extension String {

  public func isEmail() -> Bool {
    return match(Regex.Email.pattern)
  }

  public func isNumber() -> Bool {
    return match(Regex.Number.pattern)
  }
}
