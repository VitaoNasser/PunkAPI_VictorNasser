//
//  Ingredients.swift
//  PunkAPI_VictorNasser
//
//  Created by Victor Nasser on 14/04/23.
//

import Foundation

struct Ingredient: Codable {
    let malt: [IngredientDetail]?
    let hops: [IngredientDetail]?
    let yeast: String?
    
//    enum CodingKeys: String, CodingKey {
//        case malt
//        case hops
//        case yeast
//    }
}

struct IngredientDetail: Codable {
    let name: String?
    let amount: UnitValue?
    let add: String?
    let attribute: String?
    
//    enum CodingKeys: String, CodingKey {
//        case name
//        case amount
//        case add
//        case attribute
//    }
}
