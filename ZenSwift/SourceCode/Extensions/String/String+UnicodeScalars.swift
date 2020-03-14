import Foundation

public extension String {
	
	/**
	Creates an instance initialized by the sequence of unicodeScalars.
	- Parameter unicodeScalars: The sequence of unicodeScalars.
	*/
	init<S: Sequence>(
		_ unicodeScalars: S
	) where S.Iterator.Element == UnicodeScalar {
		self = String(UnicodeScalarView(unicodeScalars))
	}
	
}
