import Foundation

public extension FloatingPoint {
    
    /// Returns a random floating point number between 0.0 and 1.0, inclusive.
    static var random: Self {
        return Self(arc4random()) / 0xFFFFFFFF
    }
    
    /// Returns a random floating point number between 'min' and 'max' inclusive.
    static func random(_ min: Self, _ max: Self) -> Self {
        return Self.random * (max - min) + min
    }
    
}
