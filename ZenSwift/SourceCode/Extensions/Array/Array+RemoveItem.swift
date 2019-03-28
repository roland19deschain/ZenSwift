import Foundation

public extension Array where Element: Equatable {
    
    /// Removes specified element.
    mutating func remove(_ item: Element) {
        if let index = firstIndex(of: item) {
            remove(at: index)
        }
    }
    
    /// Removes specified elements.
    mutating func remove(_ items: [Element]) {
        for item in items {
            remove(item)
        }
    }
    
}
