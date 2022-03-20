import Foundation

public extension Optional {
	
	/// Executes the closure if there is some value.
	@discardableResult func ifSome(_ handler: (Wrapped) -> Void) -> Optional {
		switch self {
		case .none:
			break
		case .some(let wrapped):
			handler(wrapped)
		}
		return self
	}
	
	/// Executes the closure if there is no value.
	@discardableResult func ifNone(_ handler: () -> Void) -> Optional {
		switch self {
		case .none:
			handler()
		case .some:
			break
		}
		return self
	}
	
}
