import UIKit

public struct Utilities {

  public static var isPushNotificationEnabled: Bool {
    guard let settings = UIApplication.shared.currentUserNotificationSettings else {
      return false
    }

    return UIApplication.shared.isRegisteredForRemoteNotifications
      && !settings.types.isEmpty
  }
}
