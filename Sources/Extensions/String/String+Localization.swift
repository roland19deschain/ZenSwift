import Foundation

public extension String {
	
	/// Returns a localized string.
	func localized(comment: String = "") -> String {
		NSLocalizedString(self, comment: comment)
	}
	
}
