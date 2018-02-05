//
//  Result.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 04/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

import Foundation
/// Generic type to pass result for api
enum Result<T, U> where U: Error  {
    case success(T)
    case failure(U)
}
