import Foundation

public struct Swizzler {

  public enum Kind {
    case Instance
    case Class
  }

  public static func swizzle(method: String, cls: AnyClass!, prefix: String = "swizzled", kind: Kind = .Instance) {
    let originalSelector = Selector(method)
    let swizzledSelector = Selector("\(prefix)_\(method)")

    let originalMethod = kind == .Instance
      ? class_getInstanceMethod(cls, originalSelector)
      : class_getClassMethod(cls, originalSelector)

    let swizzledMethod = kind == .Instance
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
