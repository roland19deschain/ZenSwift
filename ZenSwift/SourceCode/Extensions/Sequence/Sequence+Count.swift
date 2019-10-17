import Foundation

public extension Sequence {
    
    /// Returns the number of elements of the sequence that satisfy the given predicate (closure).
    /// - Parameter shouldCount: A closure that takes one element and returns a Boolean value indicating whether to count the element or not.
    /// - Returns: The number of elements that match a given predicate (closure).
    func count(_ shouldCount: (Iterator.Element) -> Bool) -> Int {
        var count = 0
        for element in self {
            guard shouldCount(element) else {
                continue
                
            }
            count += 1
        }
        return count
    }
    
}
