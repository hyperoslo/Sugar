import UIKit

public extension UIView {

  public var height: CGFloat {
    get {
      return frame.height
    }
    set {
      frame.size.height = newValue
    }
  }

  public var width: CGFloat {
    get {
      return frame.width
    }
    set {
      frame.size.width = newValue
    }
  }

  public var x: CGFloat {
    get {
      return frame.minX
    }
    set {
      frame.origin.x = newValue
    }
  }

  public var y: CGFloat {
    get {
      return frame.minY
    }
    set {
      frame.origin.y = newValue
    }
  }
}

