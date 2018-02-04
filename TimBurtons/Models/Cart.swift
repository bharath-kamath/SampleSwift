//
//  Cart.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 03/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//


struct Cart : Codable {
    var products: [Product]
    var total: Float?
}
