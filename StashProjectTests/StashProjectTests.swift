//
//  StashProjectTests.swift
//  StashProjectTests
//
//  Created by Paul Chen on 12/4/20.
//

import XCTest
@testable import StashProject

class StashProjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEndpoint() throws {
        XCTAssertEqual(StashEndpoint.achievements.url, Bundle.main.url(forResource: "achievements", withExtension: "json"))
    }

    func testJsonDecoding() throws {
        let jsonData = try Data(contentsOf: Bundle.main.url(forResource: "achievements", withExtension: "json")!)

        XCTAssertNoThrow(try JSONDecoder().decode(Stash.self, from: jsonData))
    }

}
