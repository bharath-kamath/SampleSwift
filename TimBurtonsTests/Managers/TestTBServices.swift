//
//  TestTBServices.swift
//  TimBurtonsTests
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

@testable import TimBurtons
import UIKit

class TestTBServices: ProductServiceProtocol {
    
    /// Bool value to check if getproducts is called or not
    var getProductsWasCalled = false
    /// Hardcoded products array
    var products: [Product]?
    var filename = "products"
    ///function to mock get Products 
    func getProducts(completionHandler: @escaping (Result<Cart?, APIError>) -> Void) {
        getProductsWasCalled = true
        
        guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
            completionHandler(Result.failure(.invalidData))
            return
        }
        do {
            let jsonData = try Data(contentsOf: url)
            let productsArray = try JSONDecoder().decode(Cart.self, from: jsonData)
            self.products = productsArray.products
            print("total is \(productsArray.total)")
            completionHandler(Result.success(productsArray))
        }
        catch let error {
            print(error)
            completionHandler(Result.failure(.jsonConversionFailure))
        }
    }
}

