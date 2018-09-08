import Foundation

public extension Collection {
    
    /// Returns a copy of 'self' with its elements shuffled.
    var shuffled: [Iterator.Element] {
        var list = Array(self)
        list.shuffle()
        return list
    }
    
}

public extension MutableCollection where Index == Int {
    
    /// Shuffle the elements of 'self' in-place.
    mutating func shuffle() {
        guard count > 1 else {
            return
        }
        for i in startIndex ..< endIndex - 1 {
            let j = Int.random(endIndex - i) + i
            guard i != j else {
                continue
            }
            swapAt(i, j)
        }
    }
    
}
