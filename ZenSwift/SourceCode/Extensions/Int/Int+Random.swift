import Foundation

public extension Int {
    
    /// Returns a random Int point number between 0 and 'n'.
    static func random(_ n: Int) -> Int {
        return Int(arc4random_uniform(UInt32(n)))
    }
    
    /// Returns a random Int point number between 0 and Int.max.
    static var random: Int {
        return random(.max)
    }
    
    /// Returns a random Int point number between 'min' and 'max' inclusive.
    static func random(_ min: Int, _ max: Int) -> Int {
        return random(max - min + 1) + min
    }
    
}
