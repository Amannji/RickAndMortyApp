//
//  RMCharachter.swift
//  RickAndMortyInfoApp
//
//  Created by Aman Gupta on 22/08/24.
//

import Foundation

struct RMCharacter: Codable{
      let id: Int
      let name: String
      let status: RMCharacterStatus
      let species: String
      let type: String
      let gender: RMCharachterGender
      let origin: RMSingleLocation
      let location: RMSingleLocation
      let image: String
      let episode: [String]
      let url: String
      let created: String
}



enum RMCharacterStatus: String, Codable{
    case alien = "Alien"
    case dead = "Dead"
    case `unknown` = "unknown"
}


enum RMCharachterGender: String, Codable{
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}
