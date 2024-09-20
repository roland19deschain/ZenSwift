import Foundation

public final class Reference<T> {
	
	// MARK: - Stored Properties
	
	public var value: T
	
	// MARK: - Life Cycle
	
	public init(_ value: T) {
		self.value = value
	}
	
}
