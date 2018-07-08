import Foundation

extension FloatingPoint where Self: RandomValueProducer {
    
    /// Returns a random floating point number between 0.0 and 1.0, inclusive.
    public static var random: Self {
        return Self(arc4random()) / 0xFFFFFFFF
    }
    
    /// Returns a random floating point number between 0 and 'max'.
    public static func random(_ max: Self) -> Self {
        return random(0, max)
    }
    
    /// Returns a random floating point number between 'min' and 'max' inclusive.
    public static func random(_ min: Self, _ max: Self) -> Self {
        return random * (max - min) + min
    }
    
}
