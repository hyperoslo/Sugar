import UIKit

public struct Application {

  static var name: String = {
    var applicationName = ""
    if let infoDictionary = NSBundle.mainBundle().infoDictionary,
    bundleName = infoDictionary["CFBundleDisplayName"] as? String {
      applicationName = bundleName
    }
    return applicationName
  }()

  static var version: String = {
    var version: String = ""
    if let infoDictionary = NSBundle.mainBundle().infoDictionary {
      version = infoDictionary["CFBundleShortVersionString"] as! String
    }

    return version
    }()

}
