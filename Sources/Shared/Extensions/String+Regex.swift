import Foundation

public enum Regex: String {

  case email = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$"
  case number = "^[0-9]+$"

  var pattern: String {
    return rawValue
  }
}

public extension String {

  func match(_ pattern: String) -> Bool {
    do {
      let regex = try NSRegularExpression(pattern: pattern, options: [.caseInsensitive])
      return regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count)) != nil
    } catch {
      return false
    }
  }
}
