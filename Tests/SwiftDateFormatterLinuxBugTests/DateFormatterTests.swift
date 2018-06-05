
import Foundation
import XCTest

class DateFormatterTests: XCTestCase {

    let losAngelesFormatter: DateFormatter = {
        let formatter = DateFormatter()

        formatter.timeZone = TimeZone(identifier: "America/Los_Angeles")
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

        return formatter
    }()

    let santiagoFormatter: DateFormatter = {
        let formatter = DateFormatter()

        formatter.timeZone = TimeZone(identifier: "America/Santiago")
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

        return formatter
    }()

    let gmtFormatter: DateFormatter = {
        let formatter = DateFormatter()

        formatter.timeZone = TimeZone(identifier: "GMT")
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

        return formatter
    }()

    let date = Date()

    func testDateFormatter() {
        XCTAssertNotEqual(losAngelesFormatter.string(from: self.date), gmtFormatter.string(from: self.date))
        XCTAssertNotEqual(santiagoFormatter.string(from: self.date),   gmtFormatter.string(from: self.date))
    }
}
