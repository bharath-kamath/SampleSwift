//
//  TBServices.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 03/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import Foundation

/// Protocol defind for providing data to requesting classes via callbacks.
protocol ProductServiceProtocol {
    
    /**
     Function to fetch Products data and return via handler
     - Parameter completionHandler - Handler to return data back to the calling class
     - note: Handler has two parameters
     - [Products] - Array of products
     - ErrorMessage - Error message
     */
    func getProducts(completionHandler: @escaping (Result<ProductResults?, APIError>) -> Void)
}


/// Class for providing data that conforms to TBServiceProtocol
class ProductServices: APIClient {
    
    let session: URLSession
    /// initialize with custom configuration
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
}

extension ProductServices: ProductServiceProtocol {
    
    
    func getProducts(completionHandler: @escaping (Result<ProductResults?, APIError>) -> Void) {

        /*
        if let request =  APIHelper.getRequestObject(method: "GET", baseURL: Configuration.shared.environment.baseURL, queryParams: APIEndPoints.GetProducts, header: "Auth:XX", body: nil) {
            
            fetch(with: request, decode: { json -> ProductResults? in
                guard let products = json as? ProductResults else { return  nil }
                return products
            }, completion: completionHandler)
        }
        */
        
        guard let url = Bundle.main.url(forResource: "products", withExtension: "json") else {
            completionHandler(Result.failure(.invalidData))
            return
        }
        do {
            let jsonData = try Data(contentsOf: url)
            let productsArray = try JSONDecoder().decode(ProductResults.self, from: jsonData)
            print("total is \(productsArray.total)")
            completionHandler(Result.success(productsArray))
        }
        catch let error {
            print(error)
            completionHandler(Result.failure(.jsonConversionFailure))
        }
    }
    
    
}

