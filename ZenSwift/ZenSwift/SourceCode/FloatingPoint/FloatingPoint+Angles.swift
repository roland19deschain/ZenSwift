import Foundation

public extension FloatingPoint {
    
    var radians: Self { return self * .pi / 180 }
    var degrees: Self { return self * 180 / .pi }
    
}
