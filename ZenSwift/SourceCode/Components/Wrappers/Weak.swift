import Foundation

/// A wrapper for storing weak references to a value.
public struct Weak<T: AnyObject> {
	
	// MARK: - Stored Properties
	
	/// The value of `T` stored as weak reference.
	public private(set) weak var value: T?
	
	// MARK: - Life Cycle
	
	/// Creates an instance that stores a weak reference to the given value.
	public init(_ value: T) {
		self.value = value
	}
	
}

// MARK: - Convenience

public extension Weak {
	
	/// Returns a Boolean value indicating whether the wrapped value is nil.
	var isEmpty: Bool {
		
		value == nil
	}
	
}

// MARK: - Decodable

extension Weak: Decodable where T: Decodable {
	
	public init(from decoder: Decoder) throws {
		self.value = try T(from: decoder)
	}
	
}

// MARK: - Encodable

extension Weak: Encodable where T: Encodable {
	
	public func encode(to encoder: Encoder) throws {
		try value.encode(to: encoder)
	}
	
}

// MARK: - Equatable

extension Weak: Equatable where T: Equatable {
	
	public static func ==(lhs: Weak<T>, rhs: Weak<T>) -> Bool {
		lhs.value == rhs.value
	}
	
}

// MARK: - Hashable

extension Weak: Hashable where T: Hashable {
	
	public func hash(into hasher: inout Hasher) {
		hasher.combine(value)
	}
	
}

// MARK: - CustomStringConvertible

extension Weak: CustomStringConvertible where T: CustomStringConvertible {
	
	public var description: String {
		value?.description ?? "\(self)"
	}
	
}

// MARK: - CustomDebugStringConvertible

extension Weak: CustomDebugStringConvertible where T: CustomDebugStringConvertible {
	
	public var debugDescription: String {
		value?.debugDescription ?? "\(self)"
	}
	
}
