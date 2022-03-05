import Foundation

public extension String {
	
	/// Returns a boolean which determines whether the string is smaller than  argument.
	/// The default compression options is case insensitive.
	func isAscended(
		to text: String,
		options: CompareOptions = .caseInsensitive
	) -> Bool {
		compare(
			text,
			options: options
			) == .orderedAscending
	}
	
	/// Returns a boolean which determines whether the string is greater than argument.
	/// The default compression options is case insensitive.
	func isDescended(
		to text: String,
		options: CompareOptions = .caseInsensitive
	) -> Bool {
		compare(
			text,
			options: options
			) == .orderedDescending
	}
	
	/// Returns a boolean which determines whether the string is equal to the argument.
	/// The default compression options is case insensitive.
	func isSame(
		as text: String,
		options: CompareOptions = .caseInsensitive
	) -> Bool {
		compare(
			text,
			options: options
			) == .orderedSame
	}
	
}
