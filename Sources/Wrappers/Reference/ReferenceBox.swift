import Foundation

public struct ReferenceBox<T> {
	
	// MARK: - Stored Properties
	
	public var value: T {
		get {
			reference.value
		}
		set {
			// COW (Copy-on-write) implementation
			if isKnownUniquelyReferenced(&reference) {
				reference.value = newValue
			} else {
				reference = Reference(newValue)
			}
		}
	}
	private var reference: Reference<T>
	
	// MARK: - Life Cycle
	
	public init(initialValue: T) {
		reference = Reference(initialValue)
	}
	
}
