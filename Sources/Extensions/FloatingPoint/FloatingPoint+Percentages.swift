import Foundation

public extension FloatingPoint {
	
	func percent(of argument: Self) -> Self {
		argument * self / 100
	}
	
}
