import Foundation

infix operator ?= { associativity right precedence 90 }

public func ?=<T>(left: inout T, right: T?) {
  guard let value = right else { return }
  left = value
}

public func ?=<T>(left: inout T?, right: T?) {
  guard let value = right else { return }
  left = value
}
