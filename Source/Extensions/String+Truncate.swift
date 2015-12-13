import Foundation

public extension String {

  func truncate(length: Int, suffix: String = "...") -> String {
    guard self.characters.count > length else { return self }

    return self.substringToIndex(self.startIndex.advancedBy(length)) + suffix
  }
}
