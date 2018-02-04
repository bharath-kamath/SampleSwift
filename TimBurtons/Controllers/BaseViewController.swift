//
//  BaseViewController.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import UIKit
/**
 Use this as a Base View Controller throughout the app.
 
 Basic house keeping tasks can be done here.
 */
class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnalyticsManager.shared.logScreenEvent(screenName: self.controllerName)
    }
}


extension BaseViewController {
    
    var controllerName: String {
        return String(describing: type(of: self))
    }
}
