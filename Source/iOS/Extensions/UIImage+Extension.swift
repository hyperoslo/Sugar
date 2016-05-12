import UIKit

public extension UIImage {

  public convenience init(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
    let rect = CGRect(origin: CGPointZero, size: size)
    UIGraphicsBeginImageContextWithOptions(size, true, 0)
    color.setFill()
    UIRectFill(rect)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()

    self.init(CGImage: image.CGImage!)
  }

  public var hasContent: Bool {
    return CGImage != nil || CIImage != nil
  }
}
