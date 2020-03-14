import Foundation

public extension Array where Element: Equatable {
	
	func next(_ item: Element) -> Element? {
		neighbor(of: item, step: 1, offset:+)
	}
	
	func previous(_ item: Element) -> Element? {
		neighbor(of: item, step: 1, offset:-)
	}
	
	private func neighbor(
		of item: Element,
		step: Int,
		offset: (Int, Int) -> Int
	) -> Element? {
		guard let index = firstIndex(of: item),
			offset(index, step) < count else {
				return nil
		}
		return self[offset(index, step)]
	}
	
}
