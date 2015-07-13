import UIKit

public struct Application {

  public static var name: String = {
    var name = ""
    if let infoDictionary = NSBundle.mainBundle().infoDictionary,
    bundleName = infoDictionary["CFBundleDisplayName"] as? String {
      name = bundleName
    }
    return name
  }()

  public static var version: String = {
    var version: String = ""
    if let infoDictionary = NSBundle.mainBundle().infoDictionary {
      version = infoDictionary["CFBundleShortVersionString"] as! String
    }

    return version
    }()

}
