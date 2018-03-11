import CoreGraphics

public extension Int {
    var radians: CGFloat { return CGFloat(self) * .pi / 180 }
    var degrees: CGFloat { return CGFloat(self) * 180 / .pi }
}
