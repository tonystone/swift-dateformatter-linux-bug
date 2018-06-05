import XCTest

extension DateFormatterTests {
    static let __allTests = [
        ("testDateFormatter", testDateFormatter),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(DateFormatterTests.__allTests),
    ]
}
#endif
