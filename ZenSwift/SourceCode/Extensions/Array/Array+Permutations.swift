import Foundation

public extension Array {
	
	/**
	Returns an array with all possible permutations without repetitions.
	- Parameter taking: Elements group size, must always be less or equal to **count**.
	- Returns: An array with all possible permutations without repetitions.
	*/
	func uniquePermutations(taking: Int) -> [[Element]] {
		guard count >= taking else {
			return []
		}
		
		guard count >= taking && taking > 0 else {
			return [[]]
		}
		
		guard taking != 1 else {
			return map {
				[$0]
			}
		}
		
		var result: [[Element]] = []
		
		for (index, element) in enumerated() {
			var reducedElements = self
			
			reducedElements.remove(at: index)
			
			result += reducedElements.uniquePermutations(
				taking: taking - 1
			).map {
				[element] + $0
			}
		}
		
		return result
	}
	
	/**
	Returns an array with all possible permutations with repetitions.
	- Parameter taking: Elements group size, must always be less or equal to **count**.
	- Returns: An array with all possible permutations with repetitions.
	*/
	func permutations(taking: Int) -> [[Element]] {
		guard count >= 0 && taking > 0 else {
			return [[]]
		}
		
		if taking == 1 {
			return map {[$0]}
		}
		
		var result: [[Element]] = []
		
		for element in self {
			result += permutations(
				taking: taking - 1
			).map {
				[element] + $0
				
			}
		}
		
		return result
	}
	
}
