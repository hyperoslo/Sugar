import Foundation

infix operator ?= { associativity right precedence 90 }

func ?=<T>(inout left: T, right: T?) {
  guard let value = right else { return }
  left = value
}

func ?=<T>(inout left: T?, right: T?) {
  guard let value = right else { return }
  left = value
}
