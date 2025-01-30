import Foundation

public extension Dictionary {
	
	/// Returns a new dictionary containing the values of this dictionary
	/// with the keys transformed by the given closure.
	func mapKeys<T: Hashable>(
		_ transformer: (Key) -> T
	) -> [T: Value] {
		compactMapKeys(transformer)
	}
	
	/// Returns a new dictionary containing the values of this dictionary
	/// with the keys transformed by the given closure.
	func compactMapKeys<T: Hashable>(
		_ transformer: ((Key) throws -> T?)
	) rethrows -> [T: Value] {
		try reduce(into: [T: Value](minimumCapacity: count)) { (result, pair) in
			if let key = try transformer(pair.key) {
				result[key] = pair.value
			}
		}
	}
	
}
