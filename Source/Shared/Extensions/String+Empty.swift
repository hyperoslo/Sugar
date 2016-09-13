import Foundation

public extension String {
    
    public var isEmptyOrWhiteSpace: Bool {
        return trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty
    }
}

public protocol OptionalString {}
extension String: OptionalString {}

public extension Optional where Wrapped: OptionalString {
    
    public var isNilOrEmpty: Bool {
        return ((self as? String) ?? "").isEmpty
    }
}
