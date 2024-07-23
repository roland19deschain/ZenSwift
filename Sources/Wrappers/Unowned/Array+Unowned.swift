import Foundation

public extension Array where Element == Unowned<AnyObject> {
	
	/// Removes all `Unowned` wrappers that contains given `value`.
	mutating func removeAll(_ value: AnyObject) {
		removeAll {
			$0.value === value
		}
	}
	
	/// Adds a new `Unowned` wrapper with the given `value` at the end of the array,
	/// if it doesn't already contain one.
	mutating func append(value: AnyObject) {
		guard !contains(value) else {
			return
		}
		append(Unowned(value))
	}
	
	/// Returns a Boolean value indicating whether the sequence contains
	/// a `Unowned` wrapper with the given `value`.
	mutating func contains(_ value: AnyObject) -> Bool {
		contains {
			$0.value === value
		}
	}
	
	/// Calls the given closure on each element in the sequence in the same order as a for-in loop.
	mutating func forEachValue<T>(_ body: (T) -> Void) {
		forEach {
			($0.value as? T).map(body)
		}
	}
	
}
