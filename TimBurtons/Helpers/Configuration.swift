//
//  Configuration.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 02/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import UIKit

/// Enum which holds the environment specific data (URL, API Key, Tokens etc)
enum Environment: String {
    case Dev = "dev"
    case Staging = "staging"
    case Production = "production"
    
    /// Base URL for APIs
    var baseURL: String {
        switch self {
            case .Dev: return "https://dev-api.timburtons.com"
            case .Staging: return "https://staging-api.timburtons.com"
            case .Production: return "https://api.timburtons.com"
        }
    }
    
    /// Google API key for requesting address info
    var googleAPIKey: String {
        switch self {
            case .Dev: return "IREOES-SDBSDBMSD"
            case .Staging: return "SHJSJKDS-SSDMSDSDK"
            case .Production: return "DHJSDWPW-SBSMSNDS"
        }
    }
}

/**
 Struct to generate environment variables based on different build scheme
 
 - note: To switch between Dev/Stage/Production configurations, toggle between the various build scheme and to edit the
  individual config details, edit the value in the Environment Enum.
 
 - seealso: Environment
 */

class Configuration {
    let environment: Environment
    static let shared = Configuration()
    private init() {
        if let configuration = Bundle.main.object(forInfoDictionaryKey: "Configuration") as? String {
            if configuration.contains("Staging") {
                environment = Environment.Staging
                return
            }
            else if configuration.contains("Dev") {
                environment = Environment.Dev
                return
            }
        }
        environment = Environment.Production
    }
    
    init(environment: Environment) {
        self.environment = environment
    }
}

