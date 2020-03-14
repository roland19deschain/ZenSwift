import Foundation

public extension Collection where Element: Equatable {
	
	/// Returns the first position where the specified value appears in the collection.
	func firstPosition(of element: Element) -> Int? {
		guard let index = firstIndex(of: element) else {
			return nil
		}
		return distance(from: startIndex, to: index)
	}
	
}
