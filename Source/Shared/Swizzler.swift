import Foundation

public struct Swizzler {

  public enum Kind {
    case instance
    case `class`
  }

  public static func swizzle(_ method: String, cls: AnyClass!, prefix: String = "swizzled", kind: Kind = .instance) {
    let originalSelector = Selector(method)
    let swizzledSelector = Selector("\(prefix)_\(method)")

    let originalMethod = kind == .instance
      ? class_getInstanceMethod(cls, originalSelector)
      : class_getClassMethod(cls, originalSelector)

    let swizzledMethod = kind == .instance
      ? class_getInstanceMethod(cls, swizzledSelector)
      : class_getClassMethod(cls, swizzledSelector)

    let didAddMethod = class_addMethod(cls, originalSelector,
      method_getImplementation(swizzledMethod),
      method_getTypeEncoding(swizzledMethod))

    if didAddMethod {
      class_replaceMethod(cls, swizzledSelector,
        method_getImplementation(originalMethod),
        method_getTypeEncoding(originalMethod))
    } else {
      method_exchangeImplementations(originalMethod, swizzledMethod)
    }
  }
}
