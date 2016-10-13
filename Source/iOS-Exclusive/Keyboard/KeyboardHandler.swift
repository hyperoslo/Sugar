import UIKit

public protocol KeyboardHandler {

  func willShow(_ info: KeyboardInfo)
  func willHide(_ info: KeyboardInfo)
}
