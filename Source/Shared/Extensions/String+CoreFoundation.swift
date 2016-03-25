import Foundation

public extension String {

  var length: Int { return characters.count }
  var isPresent: Bool { return !isEmpty }

  func replace(string: String, with withString: String) -> String {
    return stringByReplacingOccurrencesOfString(string, withString: withString)
  }

  func truncate(length: Int, suffix: String = "...") -> String {
    return self.length > length
      ? substringToIndex(startIndex.advancedBy(length)) + suffix
      : self
  }

  func split(delimiter: String) -> [String] {
    let components = componentsSeparatedByString(delimiter)
    return components != [""] ? components : []
  }

  func contains(find: String) -> Bool {
    return rangeOfString(find) != nil
  }

  func trim() -> String {
    return stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
  }
}
