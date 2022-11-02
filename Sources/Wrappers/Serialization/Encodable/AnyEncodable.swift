#if canImport(Foundation)
import Foundation
#endif

/**
 A type-erased `Encodable` value.
 
 The `AnyEncodable` type forwards encoding responsibilities
 to an underlying value, hiding its specific underlying type.
 
 You can encode mixed-type values in dictionaries
 and other collections that require `Encodable` conformance
 by declaring their contained type to be `AnyEncodable`:
 
 let dictionary: [String: AnyEncodable] = [
 "boolean": true,
 "integer": 42,
 "double": 3.141592653589793,
 "string": "string",
 "array": [1, 2, 3],
 "nested": [
 "a": "alpha",
 "b": "bravo",
 "c": "charlie"
 ],
 "null": nil
 ]
 
 let encoder = JSONEncoder()
 let json = try! encoder.encode(dictionary)
 */
@frozen public struct AnyEncodable: Encodable, AnyEncodableProtocol {
	
	// MARK: - Stored Properties
	
	public let value: Any
	
	// MARL: - Life Cycle
	
	public init<T>(_ value: T?) {
		self.value = value ?? ()
	}
	
}

// MARK: - Equatable

extension AnyEncodable: Equatable {
	
	public static func == (lhs: AnyEncodable, rhs: AnyEncodable) -> Bool {
		switch (lhs.value, rhs.value) {
		case is (Void, Void):
			return true
		case let (lhs as Bool, rhs as Bool):
			return lhs == rhs
		case let (lhs as Int, rhs as Int):
			return lhs == rhs
		case let (lhs as Int8, rhs as Int8):
			return lhs == rhs
		case let (lhs as Int16, rhs as Int16):
			return lhs == rhs
		case let (lhs as Int32, rhs as Int32):
			return lhs == rhs
		case let (lhs as Int64, rhs as Int64):
			return lhs == rhs
		case let (lhs as UInt, rhs as UInt):
			return lhs == rhs
		case let (lhs as UInt8, rhs as UInt8):
			return lhs == rhs
		case let (lhs as UInt16, rhs as UInt16):
			return lhs == rhs
		case let (lhs as UInt32, rhs as UInt32):
			return lhs == rhs
		case let (lhs as UInt64, rhs as UInt64):
			return lhs == rhs
		case let (lhs as Float, rhs as Float):
			return lhs == rhs
		case let (lhs as Double, rhs as Double):
			return lhs == rhs
		case let (lhs as String, rhs as String):
			return lhs == rhs
		case let (lhs as [String: AnyEncodable], rhs as [String: AnyEncodable]):
			return lhs == rhs
		case let (lhs as [AnyEncodable], rhs as [AnyEncodable]):
			return lhs == rhs
		default:
			return false
		}
	}
	
}

// MARK: - Hashable

extension AnyEncodable: Hashable {
	
	public func hash(into hasher: inout Hasher) {
		switch value {
		case let value as Bool:
			hasher.combine(value)
		case let value as Int:
			hasher.combine(value)
		case let value as Int8:
			hasher.combine(value)
		case let value as Int16:
			hasher.combine(value)
		case let value as Int32:
			hasher.combine(value)
		case let value as Int64:
			hasher.combine(value)
		case let value as UInt:
			hasher.combine(value)
		case let value as UInt8:
			hasher.combine(value)
		case let value as UInt16:
			hasher.combine(value)
		case let value as UInt32:
			hasher.combine(value)
		case let value as UInt64:
			hasher.combine(value)
		case let value as Float:
			hasher.combine(value)
		case let value as Double:
			hasher.combine(value)
		case let value as String:
			hasher.combine(value)
		case let value as [String: AnyEncodable]:
			hasher.combine(value)
		case let value as [AnyEncodable]:
			hasher.combine(value)
		default:
			break
		}
	}
	
}

// MARK: - CustomStringConvertible

extension AnyEncodable: CustomStringConvertible {
	
	public var description: String {
		switch value {
		case is Void:
			return String(describing: nil as Any?)
		case let value as CustomStringConvertible:
			return value.description
		default:
			return String(describing: value)
		}
	}
	
}

// MARK: - CustomDebugStringConvertible

extension AnyEncodable: CustomDebugStringConvertible {
	
	public var debugDescription: String {
		switch value {
		case let value as CustomDebugStringConvertible:
			return "AnyEncodable(\(value.debugDescription))"
		default:
			return "AnyEncodable(\(description))"
		}
	}
	
}

extension AnyEncodable: ExpressibleByNilLiteral {}
extension AnyEncodable: ExpressibleByBooleanLiteral {}
extension AnyEncodable: ExpressibleByIntegerLiteral {}
extension AnyEncodable: ExpressibleByFloatLiteral {}
extension AnyEncodable: ExpressibleByStringLiteral {}
extension AnyEncodable: ExpressibleByStringInterpolation {}
extension AnyEncodable: ExpressibleByArrayLiteral {}
extension AnyEncodable: ExpressibleByDictionaryLiteral {}
