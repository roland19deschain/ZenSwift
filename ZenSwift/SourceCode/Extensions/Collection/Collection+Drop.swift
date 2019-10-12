import Foundation

public extension Collection {
    
    /// Returns a subsequence containing all but the specified number of initial and final elements.
    /// The sequence must be finite. If the number of elements to drop exceeds the number of
    /// elements in the sequence, the result is an empty subsequence.
    ///
    ///     let numbers = 0..<10
    ///     numbers.drop(first: 1, last: 1)  // 1..<9
    ///     numbers.drop(first: 2, last: 4)  // 2..<6
    ///
    /// - Parameter first: The number of elements to drop from the beginning of
    /// the sequence. `first` must be greater than or equal to zero.
    /// - Parameter last: The number of elements to drop off the end of the sequence.
    /// `last` must be greater than or equal to zero.
    /// - Returns: A subsequence starting after the specified number of
    ///   elements and leaving off the specified number of elements.
    
    func drop(first: Int, last: Int) -> SubSequence {
        return dropFirst(first).dropLast(last)
    }
    
}
