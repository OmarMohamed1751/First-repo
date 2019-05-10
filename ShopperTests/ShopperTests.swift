//
//  ShopperTests.swift
//  ShopperTests
//
//  Created by Omar on 5/9/19.
//  Copyright © 2019 Omar. All rights reserved.
//

import XCTest

class ShopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testGetHours(){
        XCTAssert(Wage.getHours(wage: 25, price: 100) == 4)
        XCTAssert(Wage.getHours(wage: 15.50, price: 250.53) == 17)
    }
    
}
