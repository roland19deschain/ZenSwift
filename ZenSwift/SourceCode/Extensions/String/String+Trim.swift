import Foundation

public extension String {
    
    /// Returns a new string made by removing whitespaces and new lines
    /// from both ends of the string.
    var trimmed: String {
        return trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    /// Removes spaces and newlines at the beginning and end.
    mutating func trim() {
        self = trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
}

public extension String {
    
    /// Returns a new string made by removing whitespaces and new lines
    /// from the end of the string.
    var trimmedTail: String {
        return replacingOccurrences(
            of: "\\s+$",
            with: "",
            options: .regularExpression
        )
    }
    
    /// Removes spaces and newlines from the end of the string.
    mutating func trimTail() {
        self = replacingOccurrences(
            of: "\\s+$",
            with: "",
            options: .regularExpression
        )
    }
    
}

public extension String {
    
    /// Returns a new string made by removing whitespaces and new lines
    /// from the start of the string.
    var trimedHead: String {
        return replacingOccurrences(
            of: "^\\s+",
            with: "",
            options: .regularExpression
        )
    }
    
    /// Removes spaces and newlines from the start of the string.
    mutating func trimHead() {
        self = replacingOccurrences(
            of: "^\\s+",
            with: "",
            options: .regularExpression
        )
    }
    
}
