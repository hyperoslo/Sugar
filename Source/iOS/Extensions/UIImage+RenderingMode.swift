import UIKit

public extension UIImage {

  public var original: UIImage {
    return withRenderingMode(.alwaysOriginal)
  }

  public var template: UIImage {
    return withRenderingMode(.alwaysTemplate)
  }
}
