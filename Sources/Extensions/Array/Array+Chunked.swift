import Foundation

public extension Array {
	
	/// Returns the array of arrays, obtained by dividing
	/// the receiver into parts of a specified size.
	func chunked(into size: Int) -> [[Element]] {
		stride(
			from: 0,
			to: count,
			by: size
		).map {
			Array(self[$0 ..< Swift.min($0 + size, count)])
		}
	}
	
}
