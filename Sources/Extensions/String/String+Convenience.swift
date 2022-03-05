import Foundation

public extension String {
	
	/// Returns a non-empty string or nil.
	var notEmpty: String? {
		isEmpty ? nil : self
	}
	
	/// Returns hexadecimal number made from receiver if it possible.
	var hex: Int? {
		Int(self, radix: 16)
	}
	
}
