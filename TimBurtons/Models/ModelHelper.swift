//
//  ModelHelper.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 03/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

protocol IDEquivalnce {
    
}

extension Product {
    /**
     Function to return formatted String for Product cost
     - returns: String
     - Parameter symbol: Symbol e.g $ to prefix
     - parameter conversionValue: Float value to convert product cost to different currencies
     */
    func costString(symbol: String, conversionValue: Float = 1) -> String {
        return String(format: "$%.2f", cost * conversionValue)
    }
}
