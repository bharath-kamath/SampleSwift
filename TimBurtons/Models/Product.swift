//
//  Product.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 03/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

/// Struct mapped to hold each product
struct Product : Codable {
    let id: Int
    let name: String
    let size: String?
    let cost: Float
    let type: String
}

extension Product: Equatable {
    static func ==(lhs: Product, rhs: Product) -> Bool {
        return lhs.id == rhs.id
    }
    
}

