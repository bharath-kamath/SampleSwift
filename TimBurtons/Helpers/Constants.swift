//
//  Constants.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 02/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import UIKit

enum TBColors {
    static let AppTheme = UIColor(red: 1.0, green: 0.1491, blue: 0.0, alpha: 1.0)
    static let AppBackground = UIColor(red: 0.0, green: 0.5628, blue: 0.3188, alpha: 1.0)
    static let PrimaryText = UIColor(red: 0.0, green: 0.3285, blue: 0.5749, alpha: 1.0)
    
    enum Checkout {
        static let Total = UIColor.red
    }
}

enum TBFonts {
    static let PrimaryTextSize: CGFloat = 16.0
    static let SubTextSize: CGFloat = 14.0
    static let Primary = UIFont.systemFont(ofSize: PrimaryTextSize)
    static let SubText = UIFont.systemFont(ofSize: SubTextSize)
    
}
