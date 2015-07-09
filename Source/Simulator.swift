import Foundation

public struct Simulator {

  static var isRunning: Bool = {
    #if (arch(i386) || arch(x86_64)) && os(iOS)
      return true
      #else
      return false
    #endif
  }()
}
