//
//  PunkAPIService.swift
//  PunkAPI_VictorNasser
//
//  Created by Victor Nasser on 14/04/23.
//

import Foundation

/// Primary API service object to get PunkAPI data
final class PunkAPIService {
    
    /// Shared singleton instance
    static let shared = PunkAPIService()
    
    
    /// Privatized constructor
    private init() {}
    
    /// Send Punk API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: PunkAPIRequest, completion: @escaping () -> Void) {
        
    }
}
