#if os(OSX)
  import Cocoa
#else
  import UIKit
#endif

public struct Application {

  fileprivate static func getString(_ key: String) -> String {
    guard let infoDictionary = Bundle.main.infoDictionary,
      let value = infoDictionary[key] as? String
      else { return "" }

    return value
  }

  public static var name: String = {
    return Application.getString("CFBundleDisplayName")
  }()

  public static var version: String = {
    return Application.getString("CFBundleShortVersionString")
  }()

  public static var build: String = {
    return Application.getString("CFBundleVersion")
  }()

  public static var executable: String = {
    return Application.getString("CFBundleExecutable")
  }()

  public static var bundle: String = {
    return Application.getString("CFBundleIdentifier")
  }()

  public static var schemes: [String] = {
    guard let infoDictionary = Bundle.main.infoDictionary,
      let urlTypes = infoDictionary["CFBundleURLTypes"] as? [AnyObject],
      let urlType = urlTypes.first as? [String : AnyObject],
      let urlSchemes = urlType["CFBundleURLSchemes"] as? [String]
      else { return [] }

    return urlSchemes
  }()

  public static var mainScheme: String? = {
    return schemes.first
  }()

}
