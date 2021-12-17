//
//  homeWork11Tests.swift
//  homeWork11Tests
//
//  Created by Dmitriy Lee on 13.12.2021.
//

import XCTest
@testable import homeWork11

class homeWork11Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        func test(value: Int, result: String) {
            let res = CoolFormatter.toRubles(value)
            XCTAssert(res == result, res)
        }
        
        test(value: 100, result: "100 P")
        test(value: 1000, result: "1 000 P")
        test(value: 10000, result: "10 000 P")
        
        func testLogPass(login: String, pass: String, result: Bool) {
            let log = ViewController.isValidEmail(email: login)
            let pas = ViewController.isValidPassword(testStr: pass)
            
            XCTAssert(result == log && pas, "\(login), \(pass)")
        }
        
        testLogPass(login: "dmitriy.leee@gmail.com", pass: "fffddD233", result: true)
        testLogPass(login: "leeteso97@gmail.com", pass: "xzczcxA123", result: true)
        testLogPass(login: "dmitriy.leee@gmail.com", pass: "fffd", result: true)
        testLogPass(login: "dmitriy.leee@gmail", pass: "fffddD233", result: true)
        testLogPass(login: "galinakim@mail.ru", pass: "fffddD233", result: true)
        testLogPass(login: "leeteso97@gmail.com", pass: "xzczcxds3", result: true)
        testLogPass(login: "dmitriy.leee@gmail.com", pass: "fffdqweqA", result: true)
        testLogPass(login: "dmitriy.leee@gmail", pass: "fffddD233", result: true)
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
