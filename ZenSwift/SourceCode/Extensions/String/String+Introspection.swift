import Foundation

public extension String {
    
    /// Returns true if string is a valid email.
    var isEmail: Bool {
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        return NSPredicate(format:"SELF MATCHES %@", regEx)
            .evaluate(with: self)
    }
    
    /// Returns true if string contains digits only.
    var isNumeric: Bool {
        return !isEmpty && range(of: "[^0-9]",
                                 options: .regularExpression) == nil
    }
    
    /// Returns true if string contains only alphanumeric characters.
    var isAlphanumeric: Bool {
        let set = CharacterSet.alphanumerics.inverted
        return !isEmpty && rangeOfCharacter(from: set) == nil
    }
    
    /// Returns true if string contains only latin alphanumeric characters.
    var isLatinAlphanumeric: Bool {
        return !isEmpty && range(of: "[^a-zA-Z0-9]",
                                 options: .regularExpression) == nil
    }
    
    /// Returns true if string contains only cyrillic alphanumeric characters.
    var isCyrillicAlphanumeric: Bool {
        return !isEmpty && range(of: "[^a-zA-Zа-яёА-ЯЁ0-9]",
                                 options: .regularExpression) == nil
    }
    
    /// Returns a boolean value indicating whether a string begins
    /// with whitespace or new line.
    var isBeginWithWhitespaceOrNewLine: Bool {
        guard let first = unicodeScalars.first else {
            return false
        }
        return CharacterSet
            .whitespacesAndNewlines
            .contains(first)
    }
    
    /// Returns a boolean value indicating whether a string contains emoji.
    var containsEmoji: Bool {
        return unicodeScalars.first { $0.isEmoji } != nil
    }
    
}
