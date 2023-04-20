//
//  PunkAPIGetAllBeersResponse.swift
//  PunkAPI_VictorNasser
//
//  Created by Victor Nasser on 19/04/23.
//

import Foundation

struct PunkAPIGetAllBeersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [PunkBeer]
}
