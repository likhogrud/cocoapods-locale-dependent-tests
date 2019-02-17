import XCTest
import LocaleDependentLib

class LocaleDependentLibTests: XCTestCase {

    func testLocale() {
        let localeIdentifier = Locale.current.identifier
        XCTAssert(localeIdentifier == "ru_RU")
    }

    func testSomeString() {
        let string = LocaleDependentLib.Resources.Strings.someString
        XCTAssert(string == "Русский перевод")
    }
}
