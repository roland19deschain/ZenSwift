// TODO: remove in Swift 4.2

public protocol RandomValueProducer {
    static var random: Self { get }
    static func random(_ max: Self) -> Self
    static func random(_ min: Self, _ max: Self) -> Self
}
