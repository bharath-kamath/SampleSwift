//
//  TBProductsTests.swift
//  TimBurtonsTests
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import UIKit
import XCTest
@testable import TimBurtons

class TBProductsTests: XCTestCase {
    
    var viewController: ProductsViewController!
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let storyboard = UIStoryboard(name: "Products", bundle: nil)
//        viewController = storyboard.instantiateViewController() as! ProductsViewController
        viewController = storyboard.instantiateViewController(withIdentifier: "ProductsViewController") as! ProductsViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        let _ = viewController.view
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFetchProducts() {
        
        let localFetchService = TestTBServices()
        viewController.fetchProducts(productService: localFetchService)
        
        // Test that the LocalFetch was actually called
        XCTAssertTrue(localFetchService.getProductsWasCalled, "Local Fetch Products was not called")
        
        // Test injected products were assigned
        XCTAssertEqual(localFetchService.products, viewController.productsList, "Data from local fetch products not assigned")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
