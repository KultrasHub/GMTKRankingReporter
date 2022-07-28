//
//  GameProfileView.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 28/07/2022.
//

import SwiftUI

struct GameProfileView: View {
    let profile:GameProfile
    var body: some View {
        Text(profile.name)
    }
}

struct GameProfileView_Previews: PreviewProvider {
    static var previews: some View {
        GameProfileView(profile: gameData[0])
    }
}
