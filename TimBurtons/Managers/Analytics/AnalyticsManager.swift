//
//  AnalyticsManager.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

/// Class to manage Analytics
class AnalyticsManager {
    
    // MARK: - Properties
    /// Shared Analytisc Manager
    static let shared = AnalyticsManager(appKey: Configuration.shared.environment.googleAPIKey)
    
    // MARK: -
    let googleAnalytics: GoogleAnalytics
    
    // Initialization
    private init(appKey: String) {
        self.googleAnalytics = GoogleAnalytics(appKey: appKey)
    }
    
    /**
     Function to return formatted String for Product cost
     - Parameter screenName: Name of screen to be logged
     - parameter userId: Option userId to tag screen view
     */
    func logScreenEvent(screenName: String, userId: String = "0")  {
        print("log event \(screenName)")
        // call GA
    }
    
}









class GoogleAnalytics {
    let appKey: String
    init(appKey: String){
        self.appKey = appKey
    }
    
}
