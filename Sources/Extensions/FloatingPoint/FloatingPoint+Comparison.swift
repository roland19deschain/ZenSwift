import Foundation

public extension FloatingPoint {
	
	/// Approximate equality with relative tolerance.
	/// - Parameters:
	///   - value: the value to compare with `self`
	///   - tolerance: the relative tolerance to use for the comparison
	/// - Returns: `true` if `self` is almost equal to `value`, otherwise `false`.
	func isAlmostEqual(
		_ value: Self,
		tolerance: Self = Self.ulpOfOne.squareRoot()
	) -> Bool {
		assert(
			tolerance >= .ulpOfOne && tolerance < 1,
			"tolerance should be in [.ulpOfOne, 1)"
		)
		guard !isNaN && !value.isNaN else {
			return false
		}
		guard isFinite && value.isFinite else {
			return isInfinite && value.isInfinite
			? self == value
			: false
		}
		return abs(self - value) <= tolerance
	}
	
}
