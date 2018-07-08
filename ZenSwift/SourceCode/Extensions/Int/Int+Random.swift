import Foundation

extension Int: RandomValueProducer {
    
    /// Returns a random Int point number between 0 and Int.max.
    public static var random: Int {
        return random(.max)
    }
    
    /// Returns a random Int point number between 0 and 'max'.
    public static func random(_ max: Int) -> Int {
        return Int(arc4random_uniform(UInt32(max)))
    }
    
    /// Returns a random Int point number between 'min' and 'max' inclusive.
    public static func random(_ min: Int, _ max: Int) -> Int {
        return random(max - min + 1) + min
    }
    
}
