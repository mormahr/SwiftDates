import XCTest
import Foundation
@testable import SwiftDates

final class SwiftDatesTestsDateComparison: XCTestCase {
    var start: Date!
    var end: Date!
    var between: Date!
    var before: Date!
    var after: Date!
    
    override func setUp() {
        start = Date()
        end = start.addingTimeInterval(2 * Date.dayInterval)
        between = start.addingTimeInterval(Date.dayInterval)
        before = start.addingTimeInterval(-1 * Date.dayInterval)
        after = start.addingTimeInterval(3 * Date.dayInterval)
    }
    
    func testIsBetweenBetween() {
        XCTAssertTrue(between.isBetween(start: start, end: end))
    }
    
    func testIsBetweenBefore() {
        XCTAssertFalse(before.isBetween(start: start, end: end))
    }
    
    func testIsBetweenAfter() {
        XCTAssertFalse(after.isBetween(start: start, end: end))
    }
    
    static var allTests = [
        ("isBetweenBetween", testIsBetweenBetween),
        ("isBetweenBefore", testIsBetweenBefore),
        ("isBetweenAfter", testIsBetweenAfter)
    ]
}
