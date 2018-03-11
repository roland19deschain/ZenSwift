import Foundation

public extension Bool {
    
    /// Returns a random true or false.
    static var random: Bool {
        return arc4random_uniform(2) == 0 ? true : false
    }
    
}
