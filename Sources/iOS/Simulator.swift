import Foundation

public struct Simulator {

  public static var isRunning: Bool = {
    #if targetEnvironment(simulator)
      return true
    #else
      return false
    #endif
  }()
}
