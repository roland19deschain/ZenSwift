import Foundation

extension FloatingPoint {
    
    static var random: Self {
        return Self(arc4random()) / 0xFFFFFFFF
    }
    
    static func random(_ min: Self, _ max: Self) -> Self {
        return Self.random * (max - min) + min
    }
    
}
