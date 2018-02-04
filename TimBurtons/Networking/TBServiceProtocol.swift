//
//  TBServiceProtocol.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import Foundation

/// Protocol defind for providing data to requesting classes via callbacks.
protocol TBServiceProtocol {
    
/**
     Function to fetch Products data and return via handler
     - Parameter completionHandler - Handler to return data back to the calling class
     - note: Handler has two parameters
     - [Products] - Array of products
     - ErrorMessage - Error message
 */
    func getProducts(completionHandler: @escaping ([Product]?, String?) -> Void)
}
