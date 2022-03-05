import Foundation

public extension String {
	
	/// Finds and returns the ranges of the occurrence of a given substring
	/// within receiver, subject to given options, using the specified locale, if any.
	func ranges(
		of substring: String,
		options: CompareOptions = [],
		locale: Locale? = nil
	) -> [Range<Index>] {
		var ranges: [Range<Index>] = []
		while let range = range(
			of: substring,
			options: options,
			range: (ranges.last?.upperBound ?? startIndex)..<endIndex,
			locale: locale
			) {
				ranges.append(range)
		}
		return ranges
	}
	
	/// Returns the position of the first occurrence of a given string, within a given search range,
	/// subject to given options, using the specified locale, if any.
	func firstPosition(
		of string: Self,
		options: String.CompareOptions = [],
		searchRange: Range<String.Index>? = nil,
		locale: Locale? = nil
	) -> Int? {
		guard let index = range(
			of: string,
			options: options,
			range: searchRange,
			locale: locale
			)?.lowerBound else {
				return nil
		}
		return distance(from: startIndex, to: index)
	}
	
}
