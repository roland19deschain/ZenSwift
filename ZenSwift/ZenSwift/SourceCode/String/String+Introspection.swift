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
    
}
