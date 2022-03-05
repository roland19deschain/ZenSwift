import Foundation

public extension Optional {
	
	enum Error: Swift.Error {
		case tryUnwrapNil
	}
	
	/// Returns the wrapped value of this instance. If there is no value method throw an error 'tryUnwrapNil'
	func tryUnwrap() throws -> Wrapped {
		switch self {
		case .some(let wrapped):
			return wrapped
		case .none:
			throw Error.tryUnwrapNil
		}
	}
	
}
