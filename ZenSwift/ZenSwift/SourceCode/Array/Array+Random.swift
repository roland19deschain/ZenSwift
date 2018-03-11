import Foundation

extension Array {
    
    var random: Element? {
        return count > 0 ? self[Int.random(count)] : nil
    }
    
}