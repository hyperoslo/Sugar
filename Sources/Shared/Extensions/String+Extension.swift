import Foundation

public extension String {

  var localized: String {
    return NSLocalizedString(self, comment: "")
  }
}
