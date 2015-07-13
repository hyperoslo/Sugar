import UIKit

public struct Application {

  public lazy var name: String = {
    var applicationName = ""
    if let infoDictionary = NSBundle.mainBundle().infoDictionary,
    bundleName = infoDictionary["CFBundleDisplayName"] as? String {
      applicationName = bundleName
    }
    return applicationName
  }()

}
