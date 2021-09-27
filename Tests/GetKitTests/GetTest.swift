import XCTest

@testable import GetGo

class GetTests: XCTestCase {
	func testGet() {
		var error: NSErrorPointer = nil
		guard let response = GoGet("https://golang.org/", error) else {
			XCTFail("response == nil")
			return
		}
		XCTAssertNil(error)
		guard let str = String(data: response, encoding: .utf8) else {
			XCTFail("str == nil")
			return
		}
		XCTAssert(str.contains("Go"))
		XCTAssert(str.contains("an open source programming language"))
		XCTAssert(str.contains("https://play.golang.org"))
	}

	func testVersion() {
		let version = GoVersion()
		XCTAssertEqual(version, "0.0.1")
	}
}
