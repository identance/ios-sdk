//
//  IdentanceTokenProvider.swift
//  IdentanceExample
//  Copyright © 2020 KYC LABS LTD. All rights reserved.
//

import Foundation
import Identance


// Example of custom JWT Token Provider

class IdentanceTokenProvider: TokenProvider {
    
    func token(completion: @escaping (String?, Error?) -> Void) {
        
        // Need to get Identance JWT token from web service
        completion("JWT token must be here", nil)
    }
    
}
