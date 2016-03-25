import UIKit

public extension UIView {

  public var height: CGFloat {
    get {
      return CGRectGetHeight(frame)
    }
    set {
      frame.size.height = newValue
    }
  }

  public var width: CGFloat {
    get {
      return CGRectGetWidth(frame)
    }
    set {
      frame.size.width = newValue
    }
  }

  public var x: CGFloat {
    get {
      return CGRectGetMinX(frame)
    }
    set {
      frame.origin.x = newValue
    }
  }

  public var y: CGFloat {
    get {
      return CGRectGetMinY(frame)
    }
    set {
      frame.origin.y = newValue
    }
  }
}

