//
//  PaymentManager.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

/// Class to manage payment SDK and callbacks
class PaymentManager {
    
    // MARK: -
    let googleAnalytics: GoogleAnalytics
    
    // Initialization with Payment SDK Key
    init(appKey: String) {
        self.googleAnalytics = GoogleAnalytics(appKey: appKey)
    }
    
    /**
     Function to initiate payment
     - Parameter amount: Amount to initiate transaction for
     */
    func initiatePayment(amount: Float)  {
        
    }
    
}

