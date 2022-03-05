import Foundation

public extension Encodable {
	
	/// Returns self as JSON-encoded data.
	var jsonData: Data? {
		try? JSONEncoder().encode(self)
	}
	
	/// Returns a JSON-encoded representation of self.
	var jsonRepresentation: String? {
		guard let data = jsonData else {
			return nil
		}
		return String(
			data: data,
			encoding: .utf8
		)
	}
	
	/// Returns dictionary representation of self.
	var dictionaryRepresentation: [String: Any] {
		guard
			let data = try? JSONEncoder().encode(self),
			let dictionary =  try? JSONSerialization.jsonObject(
				with: data
			) as? [String: Any]
		else {
			return [:]
		}
		return dictionary
	}
	
}
