//
//  ThriveAppTests.swift
//  ThriveAppTests
//
//  Created by Katherine Griffin on 1/31/20.
//  Copyright © 2020 Katherine Griffin. All rights reserved.
//

import XCTest
@testable import ThriveApp

class ThriveAppTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: - AuthValidator email tests

    func testValidEmailAcceptsWellFormedAddress() {
        XCTAssertTrue(AuthValidator.isValidEmail("user@example.com"))
    }

    func testValidEmailAcceptsSubdomains() {
        XCTAssertTrue(AuthValidator.isValidEmail("user@mail.example.com"))
    }

    func testValidEmailRejectsMissingAtSign() {
        XCTAssertFalse(AuthValidator.isValidEmail("userexample.com"))
    }

    func testValidEmailRejectsMissingDomain() {
        XCTAssertFalse(AuthValidator.isValidEmail("user@"))
    }

    func testValidEmailRejectsEmptyString() {
        XCTAssertFalse(AuthValidator.isValidEmail(""))
    }

    // MARK: - AuthValidator password tests

    func testValidPasswordAcceptsSixCharacters() {
        XCTAssertTrue(AuthValidator.isValidPassword("abc123"))
    }

    func testValidPasswordAcceptsMoreThanSixCharacters() {
        XCTAssertTrue(AuthValidator.isValidPassword("securepassword"))
    }

    func testValidPasswordRejectsFiveCharacters() {
        XCTAssertFalse(AuthValidator.isValidPassword("12345"))
    }

    func testValidPasswordRejectsEmptyString() {
        XCTAssertFalse(AuthValidator.isValidPassword(""))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
