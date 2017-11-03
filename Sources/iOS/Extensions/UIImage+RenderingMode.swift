import UIKit

public extension UIImage {

  public var original: UIImage? {
    guard hasContent else {
      return nil
    }

    return withRenderingMode(.alwaysOriginal)
  }

  public var template: UIImage? {
    guard hasContent else {
      return nil
    }

    return withRenderingMode(.alwaysTemplate)
  }
}
