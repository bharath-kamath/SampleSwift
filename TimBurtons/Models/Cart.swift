//
//  Cart.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 03/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//


struct Cart : Codable {
    var products: [Product]
    
    /// Total (Float) is the total cost of all products in cart
    var total: Float {
        return products.reduce(0.0) { total, product in
            total + product.cost
        }
    }
}
