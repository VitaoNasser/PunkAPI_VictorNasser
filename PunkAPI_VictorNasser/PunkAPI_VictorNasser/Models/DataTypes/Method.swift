//
//  Method.swift
//  PunkAPI_VictorNasser
//
//  Created by Victor Nasser on 14/04/23.
//

import Foundation

struct Method: Codable {
    let mash_temp: [Temperature]?
    let fermentation: Temperature?
    let twist: String?
    
//    enum CodingKeys: String, CodingKey {
//        case mash_temp
//        case fermentation
//        case twist
//    }
}
