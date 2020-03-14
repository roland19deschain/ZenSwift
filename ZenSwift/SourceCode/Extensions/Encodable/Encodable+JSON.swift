import Foundation

public extension Encodable {
	
	/// Returns a JSON-encoded representation of self.
	var json: String? {
		guard let data = try? JSONEncoder().encode(self) else {
			return nil
		}
		return String(
			data: data,
			encoding: .utf8
		)
	}
	
}
