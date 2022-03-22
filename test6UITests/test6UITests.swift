//
//  test6UITests.swift
//  test6UITests
//
//  Created by DIRECTOR on 10.09.2021.
//

import XCTest

class test6UITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test
        
        let element = XCUIApplication().windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        element.children(matching: .staticText).matching(identifier: "+1").element(boundBy: 1).tap()
        
        let button = element.children(matching: .button).element(boundBy: 3)
        button.tap()
        element.children(matching: .staticText).matching(identifier: "-1").element(boundBy: 1).tap()
        button.tap()
        element.children(matching: .staticText).matching(identifier: "+1").element(boundBy: 0).tap()
        button.tap()
        element.children(matching: .staticText).matching(identifier: "-1").element(boundBy: 0).tap()
        button.tap()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
