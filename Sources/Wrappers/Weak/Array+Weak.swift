import Foundation

public extension Array where Element == Weak<AnyObject> {
	
	/// Removes all empty `Weak` wrappers.
	mutating func cleanUp() {
		self = filter {
			$0.value != nil
		}
	}
	
	/// Returns all elements except empty `Weak` wrappers.
	func cleanedUp() -> Self {
		filter {
			$0.value != nil
		}
	}
	
	/// Removes all `Weak` wrappers that contains given `value`.
	mutating func removeAll(_ value: AnyObject) {
		removeAll {
			$0.value === value
		}
	}
	
	/// Adds a new `Weak` wrapper with the given `value` at the end of the array,
	/// if it doesn't already contain one.
	mutating func append(value: AnyObject) {
		guard !contains(value) else {
			return
		}
		append(Weak(value))
	}
	
	/// Returns a Boolean value indicating whether the sequence contains
	/// a `Weak` wrapper with the given `value`.
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
