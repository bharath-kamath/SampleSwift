//
//  ProductsViewController.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 02/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//


//MARK: - Products Listing View Controller

import UIKit

class ProductsViewController: UIViewController {

    var productsList: [Product] = []
    var productsService = TBServices()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchProducts(productService: productsService)
    }

    
    func fetchProducts(productService: TBServiceProtocol) {
        productService.getProducts(completionHandler: {[weak self]  products, errorMessage in
            if let error = errorMessage {
                print("API ERROR - \(error)")
            }
            else if let productsL = products  {
                self?.productsList = productsL
            }
//            tableview.reloadData()
        })
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
