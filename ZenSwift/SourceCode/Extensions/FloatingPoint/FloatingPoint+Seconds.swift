import Foundation

// MARK: - Minute

public extension FloatingPoint {
	
	/// Returns number of seconds in a minute.
	static var minute: Self { 60 }
	
	/**
	Returns number of seconds in a specified number of minutes
	- parameter number: The number of minutes to count seconds.
	*/
	static func minutes(_ number: Self) -> Self {
		minute * number
	}
	
}

// MARK: - Hour

public extension FloatingPoint {
	
	/// Returns number of seconds in a hour.
	static var hour: Self { minute * 60 }
	
	/**
	Returns number of seconds in a specified number of hours
	- parameter number: The number of hours to count seconds.
	*/
	static func hours(_ number: Self) -> Self {
		hour * number
	}
	
}

// MARK: - Day

public extension FloatingPoint {
	
	/// Returns number of seconds in a day.
	static var day: Self { hour * 24 }
	
	/**
	Returns number of seconds in a specified number of days
	- parameter number: The number of days to count seconds.
	*/
	static func days(_ number: Self) -> Self {
		day * number
	}
	
}

// MARK: - Week

public extension FloatingPoint {
	
	/// Returns number of seconds in a week.
	static var week: Self { day * 7 }
	
	/**
	Returns number of seconds in a specified number of weeks
	- parameter number: The number of weeks to count seconds.
	*/
	static func weeks(_ number: Self) -> Self {
		week * number
	}
	
}
