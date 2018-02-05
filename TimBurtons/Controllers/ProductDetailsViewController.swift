//
//  ProductDetailsViewController.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import UIKit

class ProductDetailsViewController: BaseViewController {

    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.title = product?.name != nil ? product?.name : "Product not set"
    }
    
}
