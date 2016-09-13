import UIKit

public extension UIImage {

  public convenience init(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
    let rect = CGRect(origin: CGPoint.zero, size: size)
    UIGraphicsBeginImageContextWithOptions(size, true, 0)
    color.setFill()
    UIRectFill(rect)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()

    self.init(cgImage: (image?.cgImage!)!)
  }

  public var hasContent: Bool {
    return cgImage != nil || ciImage != nil
  }
}
