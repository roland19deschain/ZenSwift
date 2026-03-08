import Foundation

public extension String {
	
	/// Returns the first N words of the string, joined back into a single string.
	func prefixWords(_ count: Int) -> String {
		components(separatedBy: " ")
			.prefix(count)
			.joined(separator: " ")
	}
	
}
