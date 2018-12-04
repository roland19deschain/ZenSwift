import Foundation

extension Range where Bound == String.Index {
    
    /// Returns representation of self as a 'NSRange'.
    var nsRange: NSRange {
        return NSRange(
            location: lowerBound.encodedOffset,
            length: upperBound.encodedOffset - lowerBound.encodedOffset
        )
    }
    
}
