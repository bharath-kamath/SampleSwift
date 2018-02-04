//
//  ProductTableViewCell.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 03/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.textLabel?.textColor = TBColors.PrimaryText
        self.textLabel?.font = TBFonts.Primary
        
        self.detailTextLabel?.textColor = TBColors.SubText
        self.detailTextLabel?.font = TBFonts.SubText
    }

    func configure(name: String, cost: String) {
        self.textLabel?.text = name
        self.detailTextLabel?.text = cost
    }
    
    func configureCellAppearance(primaryTextColor: UIColor?, primaryFont: UIFont?, subTextColor: UIColor?, subTextFont: UIFont?) {
        if let primaryColor = primaryTextColor {
            self.textLabel?.textColor = primaryColor
        }
        if let pFont = primaryFont {
            self.textLabel?.font = pFont
        }
        if let subColor = subTextColor {
            self.textLabel?.textColor = subColor
        }
        if let sFont = subTextFont {
            self.textLabel?.font = sFont
        }
    }

}
