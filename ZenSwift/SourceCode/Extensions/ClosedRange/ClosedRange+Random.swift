import Foundation

extension ClosedRange where Bound: RandomValueProducer {
    
    /// Returns random value between lower and upper bounds
    public var random: Bound { return .random(lowerBound, upperBound)  }
    
}
