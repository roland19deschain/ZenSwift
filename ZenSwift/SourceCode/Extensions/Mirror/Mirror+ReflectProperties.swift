import Foundation

public extension Mirror {
	
	/// Iterate through all of properties in the reflected subject,
	/// and perform the same action on them.
	/// - Parameters:
	///     - matchingType: The type of properties in reflecting subject which are involved.
	///     - recursively: A Boolean value indicating whether an iteration occurs recursively.
	///     - closure: A closure that will be apply to every property of reflecting subject.
	func reflectProperties<T>(
		matchingType type: T.Type = T.self,
		recursively: Bool = false,
		using closure: (T) -> Void
	) {
		for child in children {
			(child.value as? T).map(closure)
			
			guard recursively else {
				continue
			}
			Mirror(
				reflecting: child.value
			).reflectProperties(
				recursively: true,
				using: closure
			)
		}
	}
	
}
