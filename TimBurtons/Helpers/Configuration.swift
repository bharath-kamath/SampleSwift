//
//  Configuration.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 02/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import UIKit

enum Environment: String {
    case Dev = "dev"
    case Staging = "staging"
    case Production = "production"
    
    // BaseURL for the APIs
    var baseURL: String {
        switch self {
            case .Dev: return "https://dev-api.timburtons.com"
            case .Staging: return "https://staging-api.timburtons.com"
            case .Production: return "https://api.timburtons.com"
        }
    }
    
    
}

struct Configuration {
    lazy var environment: Environment = {
        if let configuration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as? String {
            if configuration.contains("Staging") {
                return Environment.Staging
            }
            else if configuration.contains("Dev") {
                return Environment.Dev
            }
        }
        return Environment.Production
    }()
}
