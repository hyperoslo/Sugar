import UIKit

public struct Screen {

  public var pixelSize: CGSize {
    let screenSize = UIScreen.mainScreen().bounds.size
    let scale = UIScreen.mainScreen().scale

    return CGSize(width: screenSize.width * scale,
      height: screenSize.height * scale)
  }
}
