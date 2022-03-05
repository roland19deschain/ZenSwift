import Foundation

public extension BidirectionalCollection where Iterator.Element: Equatable {

	typealias Element = Self.Iterator.Element

	func after(_ item: Element, isLooped: Bool = false) -> Element? {
		guard let itemIndex = firstIndex(of: item) else {
			return nil
		}
		let nextItemIndex = index(after: itemIndex)
		let isLastItem = nextItemIndex == endIndex

		if isLastItem {
			return isLooped ? first : nil
		} else {
			return self[nextItemIndex]
		}
	}

	func before(_ item: Element, isLooped: Bool = false) -> Element? {
		guard let itemIndex = firstIndex(of: item) else {
			return nil
		}
		let previousItemIndex = index(before: itemIndex)
		let isFirstItem = itemIndex == startIndex

		if isFirstItem {
			return isLooped ? last : nil
		} else {
			return self[previousItemIndex]
		}
	}

}
