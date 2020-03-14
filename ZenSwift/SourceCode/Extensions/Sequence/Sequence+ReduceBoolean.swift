import Foundation

public extension Sequence where Iterator.Element == Bool {
	
	/// Returns true if all elements of sequence are true.
	var allTrue: Bool {
		reduce(true) { $0 && $1}
	}
	
	/// Returns true if all elements of sequence are false.
	var allFalse: Bool {
		reduce(true) { $0 && !$1 }
	}
	
	/// Returns true if at least one element of sequence are true.
	var anyTrue: Bool {
		reduce(false) { $0 || $1 }
	}
	
	/// Returns true if at least one element of sequence are false.
	var anyFalse: Bool {
		reduce(false) { $0 || !$1 }
	}
	
}
