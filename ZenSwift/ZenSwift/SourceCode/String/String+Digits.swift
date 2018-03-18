import Foundation

public extension String {
    
    /// Returns true if there is at least one digit in the string.
    var hasDigits: Bool {
        return rangeOfCharacter(from: .decimalDigits,
                                options: .literal,
                                range: nil) != nil
    }
    
    /// Returns a string consisting only of digits.
    var digits: String {
        return components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
    }
    
}
