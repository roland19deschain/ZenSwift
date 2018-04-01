import Foundation

public extension Collection {
    
    /// Returns a copy of 'self' with its elements shuffled.
    var shuffle: [Iterator.Element] {
        var list = Array(self)
        list.shuffleInPlace()
        return list
    }
    
}

public extension MutableCollection where Index == Int {
    
    /// Shuffle the elements of 'self' in-place.
    mutating func shuffleInPlace() {
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
