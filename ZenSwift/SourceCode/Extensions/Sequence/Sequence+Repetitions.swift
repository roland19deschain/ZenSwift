import Foundation

public extension Sequence where Element: Hashable {
	
	/// Returns a new dictionary containing the key-value pairs,
	/// in which the key is a sequence element,
	/// and the value is the number of repetitions of this element in the sequence.
	var repetitionsMap: [Element: Int] {
		Dictionary(
			map { ($0, 1) },
			uniquingKeysWith: +
		)
	}
	
	/// Returns the elements of a sequence with the same and maximum number of repetitions.
	var mostRepeating: [Element] {
		let repetitionsMap = self.repetitionsMap
		guard let maxValue = repetitionsMap.values.max() else {
			return []
		}
		return repetitionsMap
			.filter { $0.value == maxValue }
			.keys
			.map { $0 }
	}
	
}
