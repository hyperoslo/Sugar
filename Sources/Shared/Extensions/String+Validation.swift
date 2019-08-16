import Foundation

public extension String {

  func isEmail() -> Bool {
    return match(Regex.email.pattern)
  }

  func isNumber() -> Bool {
    return match(Regex.number.pattern)
  }
}
