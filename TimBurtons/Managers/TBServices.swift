//
//  TBServices.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 03/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import UIKit

/// Class for providing data that conforms to TBServiceProtocol
class TBServices: TBServiceProtocol {
    
    let defaultSession = URLSession(configuration: .default)
    var dataTask: URLSessionDataTask?
    
    func getProducts(completionHandler: @escaping ([Product]?, String?) -> Void) {

        /*
        dataTask?.cancel()
        
        var config = Configuration()
        if var urlComponents = URLComponents(string: "\(config.environment.baseURL)\(APIEndPoints.GetProducts)") {
            
            guard let url = urlComponents.url else { return }
            
         let request =  APIManager.getRequestObject(method: "GET", baseURL: Configuration.shared.environment.baseURL, queryParams: APIEndPoints.GetProducts, header: "Auth:XX")
            
            dataTask = defaultSession.dataTask(with: request) { data, response, error in
                
                defer { self.dataTask = nil }
                var errorMessage: String? = nil
                if let error = error {
                    errorMessage = "DataTask error: " + error.localizedDescription + "\n"
                } else if let data = data,
                    let response = response as? HTTPURLResponse,
                    response.statusCode == 200 {
//                    self.updateSearchResults(data)
                }
                DispatchQueue.main.async {
                    completionHandler([], errorMessage)
                }
            }
            dataTask?.resume()
        }*/
            
        guard let url = Bundle.main.url(forResource: "products", withExtension: "json") else {
            completionHandler(nil, "Error - Could not read data from the json file")
            return
        }
        do {
            let jsonData = try Data(contentsOf: url)
            let productsArray = try JSONDecoder().decode(Cart.self, from: jsonData)
            print("total is \(productsArray.total)")
            completionHandler(productsArray.products, nil)
        }
        catch let error {
            print(error)
            completionHandler(nil, "Error - Could not decode the JSON response")
        }
    }
    
    
}

