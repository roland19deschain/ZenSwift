import Foundation

extension String {
    
    var digits: String {
        let set = CharacterSet.decimalDigits.inverted
        return components(separatedBy: set).joined()
    }
    
}