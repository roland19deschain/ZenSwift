import Foundation

public extension Array where Element: Equatable {
    
    /// Returns array without duplicates.
    var removedDuplicates: [Element] {
        var result = [Element]()
        for value in self {
            guard !result.contains(value) else {
                continue
            }
            result.append(value)
        }
        return result
    }
    
    /// Removes duplicates.
    mutating func removeDuplicates() {
        self = removedDuplicates
    }
    
}
