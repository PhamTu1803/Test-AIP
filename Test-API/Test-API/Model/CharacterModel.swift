//
//  CharacterModel.swift
//  Test-API
//
//  Created by phamtu on 07/07/2021.
//

import Foundation

struct Characters1 : Decodable {
  
    let characters , locations , empisodes  : String?
    
    enum CodingKeys : String , CodingKey {
        case characters = "characters"
        case locations = "locations"
        case empisodes = "empisodes"
    }
}
