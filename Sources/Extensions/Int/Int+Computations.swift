import Foundation

public extension Int {
	
	/// Returns the receiver’s factorial if value does not overflow **Int**, otherwise returns _nil_
	/// The factorial of any number greater than 20 will overflow **Int**.
	/// If the receiver is negative - returns 1
	var factorial: Self? {
		(1...Swift.max(self, 1)).reduce(1) { (result: Int?, value: Int) -> Int? in
			guard let multipliedReport = result?.multipliedReportingOverflow(by: value),
				!multipliedReport.overflow else {
					return nil
			}
			return multipliedReport.partialValue
		}
	}
	
}
