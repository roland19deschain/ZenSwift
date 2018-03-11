import Foundation

extension Int {
    
    static func random(_ n: Int) -> Int {
        return Int(arc4random_uniform(UInt32(n)))
    }
    
    static var random: Int {
        return random(.max)
    }
    
    static func random(_ min: Int, _ max: Int) -> Int {
        return random(max - min + 1) + min
    }
    
}
