import Foundation

public func localizedString(key: String, _ bundleClass: AnyClass? = nil, comment: String? = nil) -> String {
  if let bundleClass = bundleClass {
    return NSLocalizedString(key, bundle: NSBundle(forClass: bundleClass), comment: (comment != nil) ? comment! : key)
  } else {
    return NSLocalizedString(key, bundle: NSBundle.mainBundle(), comment: (comment != nil) ? comment! : key)
  }
}
