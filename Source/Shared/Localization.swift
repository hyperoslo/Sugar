import Foundation

public func localizedString(key: String, comment: String? = nil) -> String {
  return NSLocalizedString(key, comment: (comment != nil) ? comment! : key)
}
