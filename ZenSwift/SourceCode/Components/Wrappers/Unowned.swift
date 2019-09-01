import Foundation

/// A wrapper for storing unowned references to a value.
public struct Unowned<T: AnyObject> {
    
    // MARK: - Stored Properties
    
    /// The value of `T` stored as unowned reference.
    public private(set) unowned var value: T
    
    // MARK: - Life Cycle
    
    /// Creates an instance that stores the given value.
    public init(_ value: T) {
        self.value = value
    }
    
}

// MARK: - Decodable

extension Unowned: Decodable where T: Decodable {
    
    public init(from decoder: Decoder) throws {
        self.value = try T(from: decoder)
    }
    
}

// MARK: - Encodable

extension Unowned: Encodable where T: Encodable {
    
    public func encode(to encoder: Encoder) throws {
        try value.encode(to: encoder)
    }
    
}

// MARK: - Equatable

extension Unowned: Equatable where T: Equatable {
    
    public static func ==(lhs: Unowned<T>, rhs: Unowned<T>) -> Bool {
        return lhs.value == rhs.value
    }
    
}

// MARK: - Hashable

extension Unowned: Hashable where T: Hashable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(value)
    }
    
}

// MARK: - CustomStringConvertible

extension Unowned: CustomStringConvertible where T: CustomStringConvertible {
    
    public var description: String {
        return value.description
    }
    
}

// MARK: - CustomDebugStringConvertible

extension Unowned: CustomDebugStringConvertible where T: CustomDebugStringConvertible {
    
    public var debugDescription: String {
        return value.debugDescription
    }
    
}
