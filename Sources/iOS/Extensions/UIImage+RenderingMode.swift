import UIKit

public extension UIImage {

  var original: UIImage? {
    guard hasContent else {
      return nil
    }

    return withRenderingMode(.alwaysOriginal)
  }

  var template: UIImage? {
    guard hasContent else {
      return nil
    }

    return withRenderingMode(.alwaysTemplate)
  }
}
