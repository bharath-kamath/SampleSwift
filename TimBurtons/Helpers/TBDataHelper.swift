//
//  TBDataHelper.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import  Foundation

/// Extension to get localized strings
extension String {
    func localizedTBString() -> String {
        return NSLocalizedString(self, comment: "")
    }
}
