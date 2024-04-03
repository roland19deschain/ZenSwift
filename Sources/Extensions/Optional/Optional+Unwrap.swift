import Foundation

public extension Optional {
	
	/// Convenient for casting multiple nested optionals to a specified type.
	///
	/// For example:
	/// ```Swift
	/// let result: Int???????? = 45
	/// print(result) // Optional(Optional(Optional(Optional(Optional(Optional(Optional(Optional(45))))))))
	///
	/// let unwrapped = result.unwrap(Int.self)
	/// print(unwrapped) // Optional(45)
	/// ```
	///
	/// - Parameter type: A type to convert to.
	/// - Returns: Optional unwrapped value.
	func unwrap<T>(_ type: T.Type) -> T? {
		self as? T
	}
	
}

public extension Optional {
	
	enum Error: Swift.Error {
		case tryUnwrapNil
	}
	
	/// Returns the wrapped value of this instance.
	/// If there is no value method throw an error `tryUnwrapNil`.
	var tryUnwrap: Wrapped {
		get throws {
			switch self {
			case .some(let wrapped):
				return wrapped
			case .none:
				throw Error.tryUnwrapNil
			}
		}
	}
	
}
