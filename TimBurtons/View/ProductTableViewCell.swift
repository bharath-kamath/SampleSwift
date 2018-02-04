//
//  ProductTableViewCell.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 03/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import UIKit

/// TableviewCell to show product items
class ProductTableViewCell: UITableViewCell {

    private let primaryTextColor = TBColors.PrimaryText
    private let primaryFont = TBFonts.Primary
    private let subTextColor = TBColors.SubText
    private let subFont = TBFonts.SubText
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code for cell
        self.textLabel?.textColor = primaryTextColor
        self.textLabel?.font = primaryFont
        
        self.detailTextLabel?.textColor = subTextColor
        self.detailTextLabel?.font = subFont
    }
}

extension ProductTableViewCell {
    /**
     Function to configure data for the cell
     - Parameter name - Text for Primary label
     - Parameter name - cost for Secondary label
     */
    func configure(name: String, cost: String) {
        self.textLabel?.text = name
        self.detailTextLabel?.text = cost
    }
    
    
    /**
     Function to configure cell appearance
     - Parameter primaryTextColor - Optional primary text color, if not set, default color is used.
     - Parameter primaryFont - cost for Secondary label
     - Parameter subTextColor - Text for Primary label
     - Parameter subTextFont - cost for Secondary label
     */
    
    func configureCellAppearance(primaryTextColor: UIColor?, primaryFont: UIFont?, subTextColor: UIColor?, subTextFont: UIFont?) {
        if let primaryColor = primaryTextColor {
            self.textLabel?.textColor = primaryColor
        }
        else {
            self.textLabel?.textColor = self.primaryTextColor
        }
        
        if let pFont = primaryFont {
            self.textLabel?.font = pFont
        }
        else {
            self.textLabel?.font = self.primaryFont
        }
        
        if let subColor = subTextColor {
            self.textLabel?.textColor = subColor
        }
        else {
           self.textLabel?.textColor = self.subTextColor
        }
        
        if let sFont = subTextFont {
            self.textLabel?.font = sFont
        }
        else {
            self.textLabel?.font = self.subFont
        }
    }
}
