import UIKit

extension UIStackView {
    
  func addArrangedSubviews(_ subviews: UIView...) {
    subviews.forEach { addArrangedSubview($0) }
  }
    
  func addArrangedSubviews(contentsOf sequence: [UIView]) {
    sequence.forEach { addArrangedSubview($0) }
  }
}
