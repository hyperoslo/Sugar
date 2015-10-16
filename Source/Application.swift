import UIKit

public struct Application {

  private static func getString(key: String) -> String {
    guard let infoDictionary = NSBundle.mainBundle().infoDictionary,
      value = infoDictionary[key] as? String
      else { return "" }

    return value
  }

  public static var name: String = {
    return Application.getString("CFBundleDisplayName")
  }()

  public static var version: String = {
    return Application.getString("CFBundleShortVersionString")
    }()

  public static var executable: String = {
    return Application.getString("CFBundleExecutable")
  }()

}
