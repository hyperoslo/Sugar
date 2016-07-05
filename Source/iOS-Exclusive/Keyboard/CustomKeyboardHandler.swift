import UIKit

public class CustomKeyboardHandler: KeyboardHandler {

  public init() {}
  
  public func willShow(info: KeyboardInfo) {
    show?(info: info)
  }

  public func willHide(info: KeyboardInfo) {
    hide?(info: info)
  }

  public var show: ((info: KeyboardInfo) -> Void)?
  public var hide: ((info: KeyboardInfo) -> Void)?
}
