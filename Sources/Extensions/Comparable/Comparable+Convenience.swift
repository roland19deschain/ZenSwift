import Foundation

public extension Comparable {
	
	/// Returns the value clamped in the given interval (if the value is out of bounds, it returns the nearest boundary).
	func clamped(to limits: ClosedRange<Self>) -> Self {
		min(max(self, limits.lowerBound), limits.upperBound)
	}
	
}
