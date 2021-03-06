import Foundation

public extension String {
	
	/// Returns an attributed string for given attributes.
	func attributed(
		_ attributes: [NSAttributedString.Key: Any]? = nil
	) -> NSAttributedString {
		NSAttributedString(
			string: self,
			attributes: attributes
		)
	}
	
}
