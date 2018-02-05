//
//  APIHelper.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import Foundation

struct APIHelper {
    static func getRequestObject(method: String, baseURL: String, queryParams: String="", header: String?, body: Data?) -> URLRequest? {
        
//        let urlString = "\(baseURL)\(queryParams)"
        let urlString = "https://api.themoviedb.org/3/movie/now_playing?api_key=34a92f7d77a168fdcd9a46ee1863edf1"
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
