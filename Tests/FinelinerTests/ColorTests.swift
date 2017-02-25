import XCTest
@testable import Fineliner

class ColorTests: XCTestCase {
    func initShouldSetColorAttributes() {
        let color = Color(255, 0, 0)
        XCTAssertEqual(color.r, 255)
    }
    static var allTests : [(String, (ColorTests) -> () throws -> Void)] {
        return [
            ("initShouldSetColorAttributes", initShouldSetColorAttributes),
        ]
    }
}