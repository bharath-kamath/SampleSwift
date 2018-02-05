//
//  Cart.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 03/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//


struct Cart : Codable {
    let products: [Product]?
    let code: Int?
    let errorMessage: String?
    
    /// Total (Float) is the total cost of all products in cart
    var total: Float {
        if let prods = products {
            return prods.reduce(0.0) { total, product in
                total + product.cost
            }
        }
        return 0.0
    }
}
