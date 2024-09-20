import Foundation

public extension String {
	
	/// Returns a boolean which determines whether the string is smaller than  argument.
	/// The default compression options is case insensitive and ignores diacritic marks.
	func isAscended(
		to text: String,
		options: CompareOptions = [.caseInsensitive, .diacriticInsensitive]
	) -> Bool {
		compare(
			text,
			options: options
		) == .orderedAscending
	}
	
	/// Returns a boolean which determines whether the string is greater than argument.
	/// The default compression options is case insensitive and ignores diacritic marks.
	func isDescended(
		to text: String,
		options: CompareOptions = [.caseInsensitive, .diacriticInsensitive]
	) -> Bool {
		compare(
			text,
			options: options
		) == .orderedDescending
	}
	
	/// Returns a boolean which determines whether the string is equal to the argument.
	/// The default compression options is case insensitive and ignores diacritic marks.
	func isSame(
		as text: String,
		options: CompareOptions = [.caseInsensitive, .diacriticInsensitive]
	) -> Bool {
		compare(
			text,
			options: options
		) == .orderedSame
	}
	
	/// This method will make sure we two version strings got an identical period
	/// and the same number of digit before making the comparison.
	/// Usage example:
	/// ```
	/// "1.0.0".versionCompare("1.0.0") // .orderedSame
	/// "0.0.2".versionCompare("0.0.1") // .orderedDescending
	/// "1.0.0".versionCompare("1.1")   // .orderedAscending
	/// ```
	/// - Parameters:
	///   - otherVersion: The version string to compare.
	///   - delimiter: The delimiter ov version components.
	/// - Returns: The `ComparisonResult` of comparing two versions strings.
	func versionCompare(
		_ otherVersion: String,
		delimiter: String = "."
	) -> ComparisonResult {
		var versionComponents: [String] = components(separatedBy: delimiter)
		var otherVersionComponents: [String] = otherVersion.components(
			separatedBy: delimiter
		)
		let lengthDiff: Int = versionComponents.count - otherVersionComponents.count
		
		if lengthDiff == 0 {
			return compare(otherVersion, options: .numeric)
		} else {
			let zeros: [String] = Array(
				repeating: "0",
				count: abs(lengthDiff)
			)
			if lengthDiff > 0 {
				otherVersionComponents.append(contentsOf: zeros)
			} else {
				versionComponents.append(contentsOf: zeros)
			}
			let lhsVersion: String = versionComponents.joined(separator: delimiter)
			let rhsVersion: String = otherVersionComponents.joined(separator: delimiter)
			return lhsVersion.compare(rhsVersion, options: .numeric)
		}
	}
	
}
