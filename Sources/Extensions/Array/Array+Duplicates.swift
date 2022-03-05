import Foundation

public extension Array where Element: Hashable {
	
	/// Returns only unique elements of the array, the
	/// remaining elements keep their original order.
	var uniques: [Element] {
		var added: [Element: Bool] = [:]
		return filter {
			added.updateValue(true, forKey: $0) == nil
		}
	}
	
	/// Returns only unique elements of the array, the order
	/// of the remaining elements may differ from the original.
	var disorderedUniques: [Element] {
		Array(Set(self))
	}
	
	/// Removes all duplicate elements from the array, the
	/// remaining elements keep their original order.
	mutating func removeDuplicates() {
		self = self.uniques
	}
	
}
