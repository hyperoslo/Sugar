import Foundation

public func localizedString(_ key: String, _ bundleClass: AnyClass? = nil, comment: String? = nil) -> String {
  if let bundleClass = bundleClass {
    return NSLocalizedString(key, bundle: Bundle(for: bundleClass), comment: (comment != nil) ? comment! : key)
  } else {
    return NSLocalizedString(key, bundle: Bundle.main, comment: (comment != nil) ? comment! : key)
  }
}

public func localizeString(_ key: String, _ bundleClass: AnyClass? = nil, comment: String? = nil, arguments: CVarArg...) -> String {
  return withVaList(arguments) {
    (NSString(format: localizeString(key, bundleClass, comment: comment), locale: Locale.current, arguments: $0) as String)
    } as String
}
