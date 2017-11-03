import Foundation

public extension String {

  public var localized: String {
    return NSLocalizedString(self, comment: "")
  }
}
