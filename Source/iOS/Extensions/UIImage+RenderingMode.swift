import UIKit

extension UIImage {

  var original: UIImage {
    return imageWithRenderingMode(.AlwaysOriginal)
  }

  var template: UIImage {
    return  imageWithRenderingMode(.AlwaysTemplate)
  }
}
