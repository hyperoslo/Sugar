import UIKit

public struct Screen {

  public static var pixelSize: CGSize {
    let screenSize = UIScreen.main.bounds.size
    let scale = UIScreen.main.scale

    return CGSize(width: screenSize.width * scale,
      height: screenSize.height * scale)
  }
}
