import Foundation

// Acknowlegements in Date+Utilities.swift

/// Comparing dates
extension Date {
    /// Is date inclusive between two dates
    func isBetween(start: Date, end: Date) -> Bool {
        return self => start && self <= end
    }
}
