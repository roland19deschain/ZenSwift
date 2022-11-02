#if canImport(Foundation)
import Foundation
#endif

@usableFromInline protocol AnyDecodableProtocol {
	
	var value: Any { get }
	
	init<T>(_ value: T?)
	
}

// MARK: - Decodable

extension AnyDecodableProtocol {
	
	public init(from decoder: Decoder) throws {
		let container = try decoder.singleValueContainer()
		
		if container.decodeNil() {
#if canImport(Foundation)
			self.init(NSNull())
#else
			self.init(Optional<Self>.none)
#endif
		} else if let bool = try? container.decode(Bool.self) {
			self.init(bool)
		} else if let int = try? container.decode(Int.self) {
			self.init(int)
		} else if let uint = try? container.decode(UInt.self) {
			self.init(uint)
		} else if let double = try? container.decode(Double.self) {
			self.init(double)
		} else if let string = try? container.decode(String.self) {
			self.init(string)
		} else if let array = try? container.decode([AnyDecodable].self) {
			self.init(array.map { $0.value })
		} else if let dictionary = try? container.decode([String: AnyDecodable].self) {
			self.init(dictionary.mapValues { $0.value })
		} else {
			throw DecodingError.dataCorruptedError(
				in: container,
				debugDescription: "AnyDecodable value cannot be decoded"
			)
		}
	}
	
}
