import Foundation

public extension Decodable {
	
	/// Creates a new instance by decoding from the given JSON string.
	init?(jsonRepresentation: String) {
		guard let value = try? JSONDecoder().decode(
			Self.self,
			from: Data(jsonRepresentation.utf8)
			) else {
				return nil
		}
		self = value
	}
	
}
