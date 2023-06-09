//
//  PunkBeer.swift
//  PunkAPI_VictorNasser
//
//  Created by Victor Nasser on 14/04/23.
//

import Foundation

struct PunkBeer: Codable {
    
    let id: Int
    let name: String?
    let tagline: String?
    let first_brewed: String?
    let description: String?
    let image_url: String?
    let abv: Double?
    let ibu: Double?
    let target_fg: Double?
    let target_og: Double?
    let ebc: Double?
    let srm: Double?
    let ph: Double?
    let attenuation_level: Double?
    let volume: UnitValue?
    let boil_volume: UnitValue?
    let method: Method?
    let ingredients: Ingredient?
    let food_pairing: [String]?
    let brewers_tips: String?
    let contributed_by: String?
}
