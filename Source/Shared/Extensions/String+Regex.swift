import Foundation

public enum Regex: String {

  case Email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
  case Number = "^[0-9]*?$"

  var pattern: String {
    return rawValue
  }
}

public extension String {

  public func match(pattern: String) -> Bool {
    do {
      let regex = try NSRegularExpression(pattern: pattern, options: [.CaseInsensitive])
      return regex.firstMatchInString(self, options: NSMatchingOptions(rawValue: 0), range: NSMakeRange(0, characters.count)) != nil
    } catch {
      return false
    }
  }
}
