import Foundation

public extension FloatingPoint {
	
	var radians: Self {
		self * .pi / 180
	}
	
	var degrees: Self {
		self * 180 / .pi
	}
	
}
