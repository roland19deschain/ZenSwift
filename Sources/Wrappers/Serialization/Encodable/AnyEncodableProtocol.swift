#if canImport(Foundation)
import Foundation
#endif

@usableFromInline protocol AnyEncodableProtocol {
	
	var value: Any { get }
	
	init<T>(_ value: T?)
	
}

// MARK: - Encodable

extension AnyEncodableProtocol {
	
	public func encode(to encoder: Encoder) throws {
		var container = encoder.singleValueContainer()
		
		switch value {
#if canImport(Foundation)
		case is NSNull:
			try container.encodeNil()
#endif
		case is Void:
			try container.encodeNil()
		case let bool as Bool:
			try container.encode(bool)
		case let int as Int:
			try container.encode(int)
		case let int8 as Int8:
			try container.encode(int8)
		case let int16 as Int16:
			try container.encode(int16)
		case let int32 as Int32:
			try container.encode(int32)
		case let int64 as Int64:
			try container.encode(int64)
		case let uint as UInt:
			try container.encode(uint)
		case let uint8 as UInt8:
			try container.encode(uint8)
		case let uint16 as UInt16:
			try container.encode(uint16)
		case let uint32 as UInt32:
			try container.encode(uint32)
		case let uint64 as UInt64:
			try container.encode(uint64)
		case let float as Float:
			try container.encode(float)
		case let double as Double:
			try container.encode(double)
		case let string as String:
			try container.encode(string)
#if canImport(Foundation)
		case let number as NSNumber:
			try encode(nsnumber: number, into: &container)
		case let date as Date:
			try container.encode(date)
		case let url as URL:
			try container.encode(url)
#endif
		case let array as [Any?]:
			try container.encode(array.map { AnyEncodable($0) })
		case let dictionary as [String: Any?]:
			try container.encode(dictionary.mapValues { AnyEncodable($0) })
		case let encodable as Encodable:
			try encodable.encode(to: encoder)
		default:
			let context = EncodingError.Context(
				codingPath: container.codingPath,
				debugDescription: "AnyEncodable value cannot be encoded"
			)
			throw EncodingError.invalidValue(value, context)
		}
	}
	
#if canImport(Foundation)
	private func encode(
		nsnumber: NSNumber,
		into container: inout SingleValueEncodingContainer
	) throws {
		switch Character(Unicode.Scalar(UInt8(nsnumber.objCType.pointee))) {
		case "B":
			try container.encode(nsnumber.boolValue)
		case "c":
			try container.encode(nsnumber.int8Value)
		case "s":
			try container.encode(nsnumber.int16Value)
		case "i", "l":
			try container.encode(nsnumber.int32Value)
		case "q":
			try container.encode(nsnumber.int64Value)
		case "C":
			try container.encode(nsnumber.uint8Value)
		case "S":
			try container.encode(nsnumber.uint16Value)
		case "I", "L":
			try container.encode(nsnumber.uint32Value)
		case "Q":
			try container.encode(nsnumber.uint64Value)
		case "f":
			try container.encode(nsnumber.floatValue)
		case "d":
			try container.encode(nsnumber.doubleValue)
		default:
			let context = EncodingError.Context(
				codingPath: container.codingPath,
				debugDescription: "NSNumber cannot be encoded because its type is not handled"
			)
			throw EncodingError.invalidValue(nsnumber, context)
		}
	}
#endif
	
}

// MARK: - 'ExpressibleBy' protocols

extension AnyEncodableProtocol {
	
	public init(nilLiteral _: ()) {
		self.init(nil as Any?)
	}

	public init(booleanLiteral value: Bool) {
		self.init(value)
	}

	public init(integerLiteral value: Int) {
		self.init(value)
	}

	public init(floatLiteral value: Double) {
		self.init(value)
	}

	public init(extendedGraphemeClusterLiteral value: String) {
		self.init(value)
	}

	public init(stringLiteral value: String) {
		self.init(value)
	}

	public init(arrayLiteral elements: Any...) {
		self.init(elements)
	}

	public init(dictionaryLiteral elements: (AnyHashable, Any)...) {
		self.init([AnyHashable: Any](elements, uniquingKeysWith: { first, _ in first }))
	}
	
}
