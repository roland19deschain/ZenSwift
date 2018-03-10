import Foundation

public extension Array where Element: Equatable {
    
    mutating func remove(_ item: Element) {
        if let index = index(of: item) {
            remove(at: index)
        }
    }
    
    mutating func remove(_ items: [Element]) {
        for item in items {
            remove(item)
        }
    }
    
}
