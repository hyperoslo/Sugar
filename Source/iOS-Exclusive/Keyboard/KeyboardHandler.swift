import UIKit

public protocol KeyboardHandler {

  func willShow(info: KeyboardInfo)
  func willHide(info: KeyboardInfo)
}
