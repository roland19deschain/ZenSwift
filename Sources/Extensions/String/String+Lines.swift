import Foundation

public extension String {
	
	/// An array of strings made by separating by newlines.
	var lines: [String] {
		var result: [String] = []
		enumerateLines { line, stop in
			result.append(line)
		}
		return result
	}
	
}
