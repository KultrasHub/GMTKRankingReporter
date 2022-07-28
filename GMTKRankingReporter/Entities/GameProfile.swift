//
//  GameProfile.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 27/07/2022.
//

import Foundation
import SwiftUI

struct GameProfile: Identifiable, Codable{
    var id:Int
    var name: String
    var score:Double
    var genre:String
    var hours:String
    var size:String
    var imageName:String
    var image: Image{
        Image(imageName)
    }
    var description:String
}
