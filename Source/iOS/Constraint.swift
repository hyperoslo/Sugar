import UIKit

public struct Constraint {

  public static func on(constraints: [NSLayoutConstraint]) {
    constraints.forEach {
      ($0.firstItem as? UIView)?.translatesAutoresizingMaskIntoConstraints = false
      $0.isActive = true
    }
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
  func pinEdges(view: UIView) {
    Constraint.on(constraints: [
      leadingAnchor.constraint(equalTo: view.leadingAnchor),
      trailingAnchor.constraint(equalTo: view.trailingAnchor),
      topAnchor.constraint(equalTo: view.topAnchor),
      bottomAnchor.constraint(equalTo: view.bottomAnchor)
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
