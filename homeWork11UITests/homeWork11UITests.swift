//
//  homeWork11UITests.swift
//  homeWork11UITests
//
//  Created by Dmitriy Lee on 13.12.2021.
//

import XCTest
var app: XCUIApplication!

class homeWork11UITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

        func testExample() throws {
            
            let app = XCUIApplication()
            app.textFields["Логин (почта)"].tap()
            app.secureTextFields["Пароль"].tap()
            app/*@START_MENU_TOKEN@*/.staticTexts["Войти"]/*[[".buttons[\"Войти\"].staticTexts[\"Войти\"]",".staticTexts[\"Войти\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
            
            app.secureTextFields["Пароль"].tap()
            app/*@START_MENU_TOKEN@*/.staticTexts["Войти"]/*[[".buttons[\"Войти\"].staticTexts[\"Войти\"]",".staticTexts[\"Войти\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
                        
            let secureTextField = app.secureTextFields["Пароль"]
            secureTextField.tap()
            app.textFields["Логин (почта)"].tap()
            secureTextField.tap()
            secureTextField.tap()
            app/*@START_MENU_TOKEN@*/.staticTexts["Войти"]/*[[".buttons[\"Войти\"].staticTexts[\"Войти\"]",".staticTexts[\"Войти\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

            XCUIApplication()/*@START_MENU_TOKEN@*/.staticTexts["Войти"]/*[[".buttons[\"Войти\"].staticTexts[\"Войти\"]",".staticTexts[\"Войти\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
                        
    
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
