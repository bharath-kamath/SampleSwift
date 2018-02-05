//
//  AnalyticsManager.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//



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
