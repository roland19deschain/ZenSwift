import Foundation

// MARK: - Trim / Common

public extension String {
	
	/// Returns a new string made by removing whitespaces and new lines
	/// from both ends of the string.
	var trimmed: String {
		trimmingCharacters(in: .whitespacesAndNewlines)
	}
	
	/// Removes spaces and newlines at the beginning and end.
	mutating func trim() {
		self = trimmingCharacters(in: .whitespacesAndNewlines)
	}
	
}

// MARK: - Trim / Tail

public extension String {
	
	/// Returns a new string made by removing whitespaces and new lines
	/// from the end of the string.
	var trimmedTail: String {
		replacingOccurrences(
			of: "\\s+$",
			with: "",
			options: .regularExpression
		)
	}
	
	/// Removes spaces and newlines from the end of the string.
	mutating func trimTail() {
		self = replacingOccurrences(
			of: "\\s+$",
			with: "",
			options: .regularExpression
		)
	}
	
}

// MARK: - Trim / Head

public extension String {
	
	/// Returns a new string made by removing whitespaces and new lines
	/// from the start of the string.
	var trimmedHead: String {
		replacingOccurrences(
			of: "^\\s+",
			with: "",
			options: .regularExpression
		)
	}
	
	/// Removes spaces and newlines from the start of the string.
	mutating func trimHead() {
		self = replacingOccurrences(
			of: "^\\s+",
			with: "",
			options: .regularExpression
		)
	}
	
}

// MARK: - Truncate

public extension String {
	
	enum TruncationPosition {
		case head
		case middle
		case tail
	}
	
	/// Truncates the string to the specified `length` in the specified `position
	/// and appends an optional `replacement` string if it longer.
	///
	/// - Parameters:
	///   - limit: Desired maximum lengths of a string.
	///   - position: The position in the string to be truncated.
	///   - replacement: A `String` that will be placed after the truncation instead of a cut piece.
	/// - Returns: A `String` object obtained by truncating the original.
	func truncated(
		limit: Int,
		position: TruncationPosition = .tail,
		replacement: String = ""
	) -> String {
		guard count > limit else {
			return self
		}
		switch position {
		case .head:
			return replacement + suffix(limit)
		case .middle:
			let halfLimit: Float = Float(limit) / 2
			let headCount: Int = Int(ceil(halfLimit))
			let tailCount: Int = Int(floor(halfLimit))
			return "\(prefix(headCount))\(replacement)\(suffix(tailCount))"
		case .tail:
			return prefix(limit) + replacement
		}
	}
	
	/// Truncates the string to the specified length in the specified position
	/// and appends an optional replacement string if it longer.
	///
	/// - Parameters:
	///   - limit: Desired maximum lengths of a string.
	///   - position: The position in the string to be truncated.
	///   - replacement: A `String` that will be placed after the truncation instead of a cut piece.
	mutating func truncate(
		limit: Int,
		position: TruncationPosition = .tail,
		replacement: String = ""
	) {
		guard count > limit else {
			return
		}
		switch position {
		case .head:
			self = replacement + suffix(limit)
		case .middle:
			let halfLimit: Float = Float(limit) / 2
			let headCount: Int = Int(ceil(halfLimit))
			let tailCount: Int = Int(floor(halfLimit))
			self = "\(prefix(headCount))\(replacement)\(suffix(tailCount))"
		case .tail:
			self = prefix(limit) + replacement
		}
	}
	
}
