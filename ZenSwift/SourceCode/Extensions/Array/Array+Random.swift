import Foundation

public extension Array {
    
    /// Returns a random element from array, nil if array is empty.
    var random: Element? {
        return count > 0 ? self[Int.random(count)] : nil
    }
    
}
