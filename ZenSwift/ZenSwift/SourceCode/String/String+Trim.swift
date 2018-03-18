import Foundation

public extension String {
    
    /// String without spaces and newlines at the beginning and end.
    var trimmed: String {
        return trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    /// Removes spaces and newlines at the beginning and end.
    mutating func trim() {
        self = trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
}
