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
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.tableFooterView = UIView()
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
            self?.tableview.reloadData()
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

/// TableView delegate and datasource extension to configure the cell
extension ProductsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.productsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ProductTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell
        
        let item = self.productsList[indexPath.row]
        cell.configure(name: item.name, cost: item.costString(symbol: "$"))        
        return cell
    }
    
    // When user taps cell, play the local file, if it's downloaded
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
