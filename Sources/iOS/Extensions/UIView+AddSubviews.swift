import UIKit

public extension UIView {

  func addSubviews(_ subviews: UIView...) {
    subviews.forEach { addSubview($0) }
  }
    
  func addSubviews(contentsOf sequence: [UIView]) {
    sequence.forEach { addSubview($0) }
  }
}
