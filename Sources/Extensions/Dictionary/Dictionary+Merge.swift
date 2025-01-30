import Foundation

public extension Dictionary {
	
	/// Dictionary merging strategy.
	enum MergeStrategy {
		case override
		case skip
	}
	
	/// Merges the dictionary with dictionaries passed. The latter dictionaries
	/// will override values of the keys that are already set.
	/// - Parameter dictionaries: A comma seperated list of dictionaries.
	mutating func mergeByOverring<K, V>(_ dictionaries: Dictionary<K, V>...) {
		for dictionary in dictionaries {
			for (key, value) in dictionary {
				updateValue(value as! Value, forKey: key as! Key)
			}
		}
	}
	
	/// Merges the given dictionary into this dictionary, using given strategy.
	/// - Parameters:
	///   - strategy: A strategy to merge.
	///   - dictionary: A dictionary to merge.
	mutating func merge(
		strategy: MergeStrategy,
		dictionary: [Key: Value]
	) {
		switch strategy {
		case .override:
			merge(dictionary) { (current, new) in new }
		case .skip:
			merge(dictionary) { (current, new) in current }
		}
	}
	
}
