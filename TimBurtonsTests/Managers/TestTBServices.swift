//
//  TestTBServices.swift
//  TimBurtonsTests
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

@testable import TimBurtons

class TestTBServices: TBServiceProtocol {
    /// Bool value to check if getproducts is called or not
    var getProductsWasCalled = false
    /// Hardcoded products array
    var products = [Product(id: 1, name: "Latte", size: "small", cost: 2.49, type: "drink"), Product(id: 2, name: "Coffee Mocha", size: "small", cost: 2.49, type: "drink"), Product(id: 3, name: "Cupcake", size: "small", cost: 2.49, type: "food"), Product(id: 4, name: "Tea", size: "small", cost: 2.49, type: "drink")]
    
    ///function to mock get Products 
    func getProducts(completionHandler: @escaping ([Product]?, String?) -> Void) {
        getProductsWasCalled = true
        completionHandler(products, nil)
    }
}

