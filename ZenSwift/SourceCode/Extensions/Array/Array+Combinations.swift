import Foundation

public extension Array {
	
	/**
	Returns an array with all possible combinations without repetitions.
	- Parameter taking: Elements group size, must always be less or equal to **count**.
	- Returns: An array with all possible combinations without repetitions.
	*/
	func uniqueCombinations(taking: Int) -> [[Element]] {
		guard count >= taking else {
			return []
		}
		
		guard count > 0 && taking > 0 else {
			return [[]]
		}
		
		guard taking != 1 else {
			return map {
				[$0]
			}
		}
		
		var combinations: [[Element]] = []
		
		for (index, element) in enumerated() {
			var reducedElements: [Element] = self
			
			reducedElements.removeFirst(index + 1)
			
			combinations += reducedElements
				.uniqueCombinations(taking: taking - 1)
				.map {
					[element] + $0
			}
		}
		
		return combinations
	}
	
	/**
	Returns an array with all possible combinations with repetitions.
	- Parameter taking: Elements group size, must always be less or equal to **count**.
	- Returns: An array with all possible combinations with repetitions.
	*/
	func combinations(taking: Int) -> [[Element]] {
		guard count >= 0 && taking > 0 else {
			return [[]]
		}
		
		guard taking != 1 else {
			return map {
				[$0]
			}
		}
		
		var combinations: [[Element]] = []
		var reducedElements: [Element] = self
		
		for element in self {
			combinations += reducedElements
				.combinations(taking: taking - 1)
				.map {
					[element] + $0
			}
			
			reducedElements.removeFirst()
		}
		
		return combinations
	}
	
}
