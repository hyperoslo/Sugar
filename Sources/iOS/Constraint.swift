import UIKit

public struct Constraint {

  public static func on(constraints: [NSLayoutConstraint]) {
    constraints.forEach {
      ($0.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
      $0.isActive = true
    }
  }

  public static func on(_ constraints: NSLayoutConstraint...) {
    on(constraints: constraints)
  }
}

public extension UIView {

  @available(iOS 9, *)
  func pinCenter(view: UIView) {
    Constraint.on(constraints: [
      centerXAnchor.constraint(equalTo: view.centerXAnchor),
      centerYAnchor.constraint(equalTo: view.centerYAnchor)
    ])
  }

  @available(iOS 9, *)
  func pinEdges(view: UIView, inset: UIEdgeInsets = UIEdgeInsets.zero) {
    Constraint.on(constraints: [
      leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: inset.left),
      trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: inset.right),
      topAnchor.constraint(equalTo: view.topAnchor, constant: inset.top),
      bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: inset.bottom)
    ])
  }

  @available(iOS 9, *)
  func pin(size: CGSize) {
    Constraint.on(constraints: [
      widthAnchor.constraint(equalToConstant: size.width),
      heightAnchor.constraint(equalToConstant: size.height)
    ])
  }
}
