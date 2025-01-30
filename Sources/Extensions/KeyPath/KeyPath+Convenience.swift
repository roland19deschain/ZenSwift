import Foundation

public extension KeyPath {
	
	/// Returns self as a string.
	///
	/// Usage example:
	/// ```
	/// let stringValue = (\Foo.bar).stringValue
	/// print(stringValue) // prints "bar"
	/// ```
	var stringValue: String {
		NSExpression(forKeyPath: self).keyPath
	}
	
}
