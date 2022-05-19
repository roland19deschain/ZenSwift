import Foundation

public extension String {
	
	/// Returns a url if it's possible.
	var url: URL? {
		URL(string: self)
	}
	
	/// Returns a boolean value indicating whether a string is a valid link (match must covers the whole string).
	var isValidURL: Bool {
		guard
			let detector = try? NSDataDetector(
				types: NSTextCheckingResult.CheckingType.link.rawValue
			),
			let match = detector.firstMatch(
				in: self,
				options: [],
				range: NSRange(location: 0, length: utf16.count)
			)
		else {
			return false
		}
		return match.range.length == utf16.count
	}
	
	/// Returns a web url if it's possible.
	var webUrl: URL? {
		guard let url = url, !url.isFileURL else {
			return nil
		}
		return url
	}
	
	/// Returns a file url if it's possible.
	var fileUrl: URL? {
		guard let url = url, url.isFileURL else {
			return nil
		}
		return url
	}
	
	/// Returns an array of detected urls
	var detectedURLs: [URL] {
		let checkingType: NSTextCheckingResult.CheckingType = .link
		guard let detector = try? NSDataDetector(types: checkingType.rawValue) else {
			return []
		}
		return detector.matches(
			in: self,
			options: [],
			range: NSRange(location: 0, length: count)
		).compactMap {
			$0.resultType == checkingType ? $0.url : nil
		}
	}
	
	/**
	 Enumerates an array of detected urls. Process may be interrupted by
	 setting pointer to boolean value (stop flag) to true.
	 
	 For Example:
	 ```
	 text.detectURLs { url, stop in
	 if url == needle {
	 // stop this loop
	 stop.pointee = true
	 }
	 }
	 ```
	 */
	func detectURLs(
		handler: @escaping (URL, UnsafeMutablePointer<ObjCBool>) -> Void
	) {
		let checkingType: NSTextCheckingResult.CheckingType = .link
		let range = NSRange(location: 0, length: count)
		
		guard let dataDetector = try? NSDataDetector(
			types: checkingType.rawValue
		) else {
			return
		}
		dataDetector.enumerateMatches(
			in: self,
			options: [],
			range: range
		) { result, flags, stop in
			guard
				let result = result,
				let url = result.url,
				result.resultType == checkingType
			else {
				return
			}
			handler(url, stop)
		}
	}
	
}
