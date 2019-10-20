import Foundation

public extension Int {
    
    /// Returns a random number from 0 to 99.
    static var randomPercentage: Int {
        return .random(in: 0..<100)
    }
    
}
