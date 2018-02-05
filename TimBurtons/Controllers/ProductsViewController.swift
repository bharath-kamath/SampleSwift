//
//  ProductsViewController.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 02/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//


//MARK: - Products Listing View Controller

import UIKit

class ProductsViewController: BaseViewController {

    var productsList: [Product] = []
    var productsService = ProductServices()
    var emptyTableMessage = "Please wait while we check with our Kitchen!"
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = AppStrings.Products.Title.localizedTBString()
        self.tableview.tableFooterView = UIView()
        fetchProducts(productService: productsService)        
    }

    
    func fetchProducts(productService: ProductServiceProtocol) {
        
        productService.getProducts(completionHandler: {[weak self]  result in
            
            switch result {
            case .success(let cart):
                if let productsL = cart?.products {
                    print(productsL)
                    self?.productsList = productsL
                }
                else if let errorMessage = cart?.errorMessage {
                    print("the error \(errorMessage)")
                    self?.emptyTableMessage = errorMessage
                }
            case .failure(let error):
                print("the error \(error)")
                self?.emptyTableMessage = error.localizedDescription
            }
            
            self?.tableview.reloadData()
        })
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "productDetail" {
            if let destination = segue.destination as? ProductDetailsViewController, let product = sender as? Product {
                destination.product = product // you can pass value to destination view controller
            }
        }
    }
    

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
        
        let item = self.productsList[indexPath.row]
        self.performSegue(withIdentifier: "productDetail", sender: item)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
