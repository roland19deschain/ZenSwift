import Foundation

public extension String {
	
	/// Camel case stylized string.
	var camelCased: String {
		guard contains(" ") || contains("\n") else {
			return lowercased()
		}
		let processed: String = lowercased()
			.capitalized
			.replacingOccurrences(of: " ", with: "")
			.replacingOccurrences(of: "\n", with: "")
		return processed.prefix(1).lowercased() + processed.dropFirst()
	}
	
}
