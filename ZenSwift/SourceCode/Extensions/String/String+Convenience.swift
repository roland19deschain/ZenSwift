import Foundation

public extension String {
	
	/// Returns a non-empty string or nil.
	var notEmpty: String? {
		isEmpty ? nil : self
	}
	
}
