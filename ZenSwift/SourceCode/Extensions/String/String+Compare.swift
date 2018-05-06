import Foundation

public extension String {
    
    // MARK: - Public - Compare -
    
    /// Returns a boolean which determines whether the string is smaller than  argument.
    /// The default compression options is case insensitive.
    func isAscended(to text: String,
                    options: CompareOptions = .caseInsensitive) -> Bool {
        return compare(text,
                       options: options) == .orderedAscending
    }
    
    /// Returns a boolean which determines whether the string is greater than argument.
    /// The default compression options is case insensitive.
    func isDescended(to text: String,
                     options: CompareOptions = .caseInsensitive) -> Bool {
        return compare(text,
                       options: options) == .orderedDescending
    }
    
    /// Returns a boolean which determines whether the string is equal to the argument.
    /// The default compression options is case insensitive.
    func isSame(as text: String,
                options: CompareOptions = .caseInsensitive) -> Bool {
        return compare(text,
                       options: options) == .orderedSame
    }
    
}
