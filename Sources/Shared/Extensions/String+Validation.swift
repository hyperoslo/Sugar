import Foundation

public extension String {

  func isEmail() -> Bool {
    return match(Regex.Email.pattern)
  }

  func isNumber() -> Bool {
    return match(Regex.Number.pattern)
  }
}
