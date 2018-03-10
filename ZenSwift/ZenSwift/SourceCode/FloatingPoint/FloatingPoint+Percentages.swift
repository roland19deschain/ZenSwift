import Foundation

public extension FloatingPoint {
    
    func percent(of argument: Self) -> Self {
        return argument * self / 100
    }
    
}
