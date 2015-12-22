import Foundation

public extension String {

  var length: Int { return characters.count }

  func replace(string: String, with withString: String) -> String {
    return stringByReplacingOccurrencesOfString(string, withString: withString)
  }

  func truncate(length: Int, suffix: String = "...") -> String {
    guard self.characters.count > length else { return self }

    return self.substringToIndex(self.startIndex.advancedBy(length)) + suffix
  }
}
