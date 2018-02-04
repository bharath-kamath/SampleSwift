//
//  APIManager.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 03/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import Foundation

class APIManager {
    
    static func getRequestObject(method: String, baseURL: String, queryParams: String="", header: String?, body: Data?) -> URLRequest? {
        
        let urlString = "\(baseURL)\(queryParams)"
        guard let url: URL =  URL(string: urlString) else {
            return nil
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method
        if let auth = header {
            urlRequest.addValue(auth, forHTTPHeaderField: "authentication")
        }
        urlRequest.httpBody = body
        
        return urlRequest
    }
    
}
