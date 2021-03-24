import Foundation

public extension Array where Element == Weak<AnyObject> {
	
	/// Removes all empty 'Weak' wrappers.
	mutating func cleanUp() {
		self = filter {
			$0.value != nil
		}
	}
	
}
