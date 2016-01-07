import Foundation

public extension String {

  var length: Int { return characters.count }

  func replace(string: String, with withString: String) -> String {
    return stringByReplacingOccurrencesOfString(string, withString: withString)
  }

  func truncate(length: Int, suffix: String = "...") -> String {
    return self.characters.count > length
      ? self.substringToIndex(self.startIndex.advancedBy(length)) + suffix
      : self
  }

  func split(delimiter: String) -> [String] {
    let components = componentsSeparatedByString(delimiter)
    return components != [""] ? components : []
  }
}
