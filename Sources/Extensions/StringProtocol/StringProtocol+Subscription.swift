import Foundation

public extension StringProtocol {
	
	/// Returns the `Character` at the specified index if it is within receiver length, otherwise nil.
	subscript(offset: Int) -> Character {
		self[index(startIndex, offsetBy: offset)]
	}
	
	/// Returns the `Character` at the specified index if it is within receiver length, otherwise nil.
	subscript(safe index: Int) -> Character? {
		index < count ? self[index] : nil
	}
	
	/// Returns a subsequence at the specified range.
	subscript(range: Range<Int>) -> SubSequence {
		let start = index(startIndex, offsetBy: range.lowerBound)
		return self[start..<index(start, offsetBy: range.count)]
	}
	
	/// Returns a subsequence at the specified range.
	subscript(range: ClosedRange<Int>) -> SubSequence {
		let start = index(startIndex, offsetBy: range.lowerBound)
		return self[start..<index(start, offsetBy: range.count)]
	}
	
	/// Returns a subsequence at the specified range.
	subscript(range: PartialRangeFrom<Int>) -> SubSequence {
		self[index(startIndex, offsetBy: range.lowerBound)...]
	}
	
	/// Returns a subsequence at the specified range.
	subscript(range: PartialRangeThrough<Int>) -> SubSequence {
		self[...index(startIndex, offsetBy: range.upperBound)]
	}
	
	/// Returns a subsequence at the specified range.
	subscript(range: PartialRangeUpTo<Int>) -> SubSequence {
		self[..<index(startIndex, offsetBy: range.upperBound)]
	}
	
}
