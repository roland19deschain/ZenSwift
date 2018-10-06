import Foundation

public extension Optional where Wrapped == String {
    
    /// Returns self or empty string.
    var orEmpty: String {
        return self ?? ""
    }
    
}
