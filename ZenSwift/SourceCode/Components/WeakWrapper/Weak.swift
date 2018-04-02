import Foundation

public final class Weak<T: AnyObject> {
    
    // MARK: - Public - Stored Properties - Read Only -
    
    public private(set) weak var value: T?
    
    // MARK: - Public - Life Cycle -
    
    public init(_ value: T?) {
        self.value = value
    }
    
}

public extension Weak where T: Hashable {
    
    // MARK: - Public - Hashable -
    
    public var hashValue: Int {
        return value?.hashValue ?? .min
    }
    
}

public extension Weak where T: Equatable {
    
    // MARK: - Public - Equatable -
    
    public static func ==(lhs: Weak<T>, rhs: Weak<T>) -> Bool {
        guard let lhs = lhs.value, let rhs = rhs.value else {
            return false
        }
        return lhs == rhs
    }
    
}
