import Foundation

precedencegroup Comparison {
  associativity: left
  higherThan: LogicalConjunctionPrecedence
}

infix operator ?= : Comparison

public func ?=<T>(left: inout T, right: T?) {
  guard let value = right else { return }
  left = value
}

public func ?=<T>(left: inout T?, right: T?) {
  guard let value = right else { return }
  left = value
}
