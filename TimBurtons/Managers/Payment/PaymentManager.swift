//
//  PaymentManager.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

class PaymentManager {
    
    // MARK: -
    let googleAnalytics: GoogleAnalytics
    
    // Initialization
    init(appKey: String) {
        self.googleAnalytics = GoogleAnalytics(appKey: appKey)
    }
    
    
    func initiatePayment(amount: Float)  {
        
    }
    
}

