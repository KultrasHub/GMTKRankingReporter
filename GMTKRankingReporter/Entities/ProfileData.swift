//
//  ProfileData.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 28/07/2022.
//

import Foundation
var profiles=decodeJsonFromJsonFile(jsonFileName: "profile.json")
// How to decode a json file into a struct
func decodeJsonFromJsonFile(jsonFileName: String) -> [GameProfile] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([GameProfile].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [GameProfile]
}
