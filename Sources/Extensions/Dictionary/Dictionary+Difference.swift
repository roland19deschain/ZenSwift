import Foundation

extension Dictionary where Key: Comparable, Value: Equatable {
	
	/**
	 Returns a new dictionary containing all the (key, value) pairs available in receiver and not available in argument.
	 ### Usage example: ###
	 ```
	 ["a":1].minus(["a":2]) // ["a": 1]
	 ["a":1].minus(["a":1]) // [:]
	 ["a":1].minus(["a":1, "b":2]) // [:]
	 ["a":1, "b": 2].minus(["a":1]) // ["b": 2]
	 ```
	 - parameter dictionary: The dictionary whose values will be excluded from the result.
	 */
	func excluding(_ dictionary: Self) -> Self {
		filter {
			dictionary[$0.key] != self[$0.key]
		}.reduce([:]) { nextPartialResult, pair in
			var result = nextPartialResult
			result[pair.key] = pair.value
			return result
		}
	}
	
}
