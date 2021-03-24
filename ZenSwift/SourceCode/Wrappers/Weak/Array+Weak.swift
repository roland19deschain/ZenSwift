import Foundation

public extension Array where Element == Weak<AnyObject> {
	
	/// Removes all empty 'Weak' wrappers.
	mutating func cleanUp() {
		self = filter {
			$0.value != nil
		}
	}
	
	/// Returns all elements except empty 'Weak' wrappers.
	func cleanedUp() -> Self {
		filter {
			$0.value != nil
		}
	}
	
	/// Removes all  'Weak' wrappers that contains given value.
	mutating func removeWeak(value: AnyObject) {
		removeAll {
			$0.value === value
		}
	}
	
}
