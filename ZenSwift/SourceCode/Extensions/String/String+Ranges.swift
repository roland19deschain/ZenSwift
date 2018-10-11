import Foundation

public extension String {
    
    /// Finds and returns the ranges of the occurrence of a given substring
    /// within receiver, subject to given options, using the specified locale, if any.
    func ranges(of substring: String,
                options: CompareOptions = [],
                locale: Locale? = nil) -> [Range<Index>] {
        var ranges: [Range<Index>] = []
        while let range = range(
            of: substring,
            options: options,
            range: (ranges.last?.upperBound ?? startIndex)..<endIndex,
            locale: locale
            ) {
                ranges.append(range)
        }
        return ranges
    }
    
}
