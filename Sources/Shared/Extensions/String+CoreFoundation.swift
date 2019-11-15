import Foundation

public extension String {

  func replace(_ string: String, with withString: String) -> String {
    return replacingOccurrences(of: string, with: withString)
  }

  func split(_ delimiter: String) -> [String] {
    let components = self.components(separatedBy: delimiter)
    return components != [""] ? components : []
  }

  func trim() -> String {
    return trimmingCharacters(in: CharacterSet.whitespaces)
  }

  var uppercaseFirstLetter: String {
    guard isPresent else { return self }

    var string = self
    string.replaceSubrange(string.startIndex...string.startIndex,
                        with: String(string[string.startIndex]).capitalized)

    return string
  }
}
