import Foundation

public extension Bool {
    
    /// Returns inversed value of bool.
    var toggled: Bool {
        return !self
    }
    
    /// Inverse value of bool.
    @discardableResult mutating func toggle() -> Bool {
        self = !self
        return self
    }
    
}
