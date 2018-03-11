import Foundation

extension String {
    
    static let decimalFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.allowsFloats = true
        return formatter
    }()
    
    static var decimalSeparator: String {
        return decimalFormatter.decimalSeparator ?? "."
    }
    
    var withLocalizedDecimalSeparator: String {
        let (from, to) = String.decimalSeparator == "." ? (",", ".") : (".", ",")
        let target = replacingOccurrences(of: from, with: to)
        return target
    }
    
}
