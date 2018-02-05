//
//  TBModelTests.swift
//  TimBurtonsTests
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import XCTest
@testable import TimBurtons

class TBModelTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }
    // test case to test Product cost string modelling
    func testProductCostStringFormatting() {
        let prod = Product(id: 1, name: "Latte", size: "small", cost: 2.49, type: "drink")
        let formattedCost = prod.costString(symbol: "$")
        XCTAssertTrue(formattedCost == "$2.49", "Product cost was not formatted correctly")
        
        let formattedCost2 = prod.costString(symbol: "$", conversionValue: 2)
        XCTAssertTrue(formattedCost2 == "$4.98", "Product cost was not calculated correctly")
        
    }
    
    // test case to check cart total logic
    func testCartTotal() {
        let prod1 = Product(id: 1, name: "Latte", size: "small", cost: 2.49, type: "drink")
        let prod2 = Product(id: 2, name: "Coffee Mocha", size: "small", cost: 2.49, type: "drink")
        let prod3 = Product(id: 3, name: "Cupcake", size: "small", cost: 2.49, type: "food")
        let prod4 = Product(id: 4, name: "Tea", size: "small", cost: 2.49, type: "drink")
        
        let cart = ProductResults(products: [prod1, prod2, prod3, prod4], code: 200, errorMessage: nil)
        XCTAssertTrue(cart.total == 9.96, "Cart total is incorrect")
        
    }
    
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

