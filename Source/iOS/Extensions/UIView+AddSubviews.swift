import UIKit

public extension UIView {

  func addSubviews(subviews: UIView...) {
    subviews.forEach { addSubview($0) }
  }
}
