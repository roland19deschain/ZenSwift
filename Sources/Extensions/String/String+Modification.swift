import Foundation

public extension String {
	
	/// Returns a new string without the specified prefix.
	func deletingPrefix(_ prefix: String) -> String {
		guard hasPrefix(prefix) else {
			return self
		}
		return String(dropFirst(prefix.count))
	}
	
	/// Returns a new string without the specified suffix.
	func deletingSuffix(_ suffix: String) -> String {
		guard hasSuffix(suffix) else {
			return self
		}
		return String(dropLast(suffix.count))
	}
	
}
