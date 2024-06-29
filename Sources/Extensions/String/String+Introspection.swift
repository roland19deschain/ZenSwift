import Foundation

public extension String {
	
	/// Returns true if string is a valid email.
	var isEmail: Bool {
		NSPredicate(
			format: "SELF MATCHES %@",
			"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
		).evaluate(with: self)
	}
	
	/// Returns true if string contains digits only.
	var isNumeric: Bool {
		!isEmpty && range(
			of: "[^0-9]",
			options: .regularExpression
		) == nil
	}
	
	/// Returns true if string contains only alphanumeric characters.
	var isAlphanumeric: Bool {
		!isEmpty && rangeOfCharacter(
			from: CharacterSet.alphanumerics.inverted
		) == nil
	}
	
	/// Returns true if string contains only latin alphanumeric characters.
	var isLatinAlphanumeric: Bool {
		!isEmpty && range(
			of: "[^a-zA-Z0-9]",
			options: .regularExpression
		) == nil
	}
	
	/// Returns true if string contains only cyrillic alphanumeric characters.
	var isCyrillicAlphanumeric: Bool {
		!isEmpty && range(
			of: "[^a-zA-Zа-яёА-ЯЁ0-9]",
			options: .regularExpression
		) == nil
	}
	
	/// Returns a boolean value indicating whether a string begins
	/// with whitespace or new line.
	var isBeginWithWhitespaceOrNewLine: Bool {
		guard let first = unicodeScalars.first else {
			return false
		}
		return CharacterSet
			.whitespacesAndNewlines
			.contains(first)
	}
	
	/// Returns a boolean value indicating whether a string
	/// contains at least one emoji.
	var containsEmoji: Bool {
		unicodeScalars.first {
			$0.isEmoji
		} != nil
	}
	
	/// Returns a boolean value indicating whether a string
	/// contains at least one newline character.
	var containsNewLine: Bool {
		rangeOfCharacter(from: .newlines) != nil
	}
	
	/// Returns `true` if all the letters in a word the same, otherwise returns `false`.
	var allCharactersSame: Bool {
		enumerated().reduce(true) { partialResult, item in
			guard item.offset < (count - 1) else {
				return partialResult
			}
			return partialResult && item.element == self[item.offset + 1]
		}
	}
	
}
