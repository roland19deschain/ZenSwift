import Foundation

public extension Sequence where Iterator.Element == Bool {
    
    var allTrue: Bool { return reduce(true) { $0 && $1} }
    
    var allFalse: Bool { return reduce(true) { $0 && !$1 } }
    
    var anyTrue: Bool { return reduce(false) { $0 || $1 } }
    
    var anyFalse: Bool { return reduce(false) { $0 || !$1 } }
    
}
