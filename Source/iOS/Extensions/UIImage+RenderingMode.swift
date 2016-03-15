import UIKit

public extension UIImage {

  public var original: UIImage {
    return imageWithRenderingMode(.AlwaysOriginal)
  }

  public var template: UIImage {
    return imageWithRenderingMode(.AlwaysTemplate)
  }
}
