import Foundation

public extension String {
    
    /// Returns a localized string.
    func localized(comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
}
