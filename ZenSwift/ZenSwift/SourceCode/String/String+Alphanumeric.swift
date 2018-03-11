import Foundation

extension String {
    
    var isLatinAlphanumeric: Bool {
        return !isEmpty && range(of: "[^a-zA-Z0-9]",
                                 options: .regularExpression) == nil
    }
    
}

extension String {
    
    var isAnyLanguageAlphanumeric: Bool {
        let set = CharacterSet.alphanumerics.inverted
        return !isEmpty && rangeOfCharacter(from: set) == nil
    }
    
}

extension String {
    
    var isLatinAndRuAlphanumeric: Bool {
        return !isEmpty && range(of: "[^a-zA-Zа-яёА-ЯЁ0-9]",
                                 options: .regularExpression) == nil
    }
    
}
