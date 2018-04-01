import Foundation

public extension Sequence where Iterator.Element == Bool {
    
    /// Returns true if all elements of sequence are true.
    var allTrue: Bool { return reduce(true) { $0 && $1} }
    
    /// Returns true if all elements of sequence are false.
    var allFalse: Bool { return reduce(true) { $0 && !$1 } }
    
    /// Returns true if at least one element of sequence are true.
    var anyTrue: Bool { return reduce(false) { $0 || $1 } }
    
    /// Returns true if at least one element of sequence are false.
    var anyFalse: Bool { return reduce(false) { $0 || !$1 } }
    
}
