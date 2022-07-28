//
//  TopListView.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 27/07/2022.
//

import SwiftUI

struct TopListView: View{
    var body: some View{
        NavigationView{
            List(profiles){
                profile in
                NavigationLink{
                    GameCard(profile: profile)
                } label: {
                GameCard(profile: profile)
            }
            .navigationTitle("SSET Contact 📒")
            }
        }
    }
}
struct TopList_Previews: PreviewProvider {
    static var previews: some View {
        TopListView()
    }
}
