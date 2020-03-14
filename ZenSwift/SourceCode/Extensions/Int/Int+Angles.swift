import CoreGraphics

public extension Int {
	
	var radians: CGFloat {
		CGFloat(self) * .pi / 180
	}
	
	var degrees: CGFloat {
		CGFloat(self) * 180 / .pi
	}
	
}
