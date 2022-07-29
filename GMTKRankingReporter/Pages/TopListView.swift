//
//  TopListView.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 27/07/2022.
//

import SwiftUI

struct TopListView: View{
    var body: some View{
        
        NavigationView
        {
            ZStack
            {
                List(gameData)
                {
                    profile in
                    HStack{
                        Spacer()
                        GameCard(profile: profile)
                        Spacer()
                    }.listRowBackground(Color.clear)
                        .listRowInsets(EdgeInsets(top: 5, leading: 0, bottom: 10, trailing: 0))
                
                }.navigationTitle("Featured Games")
                    .environment(\.defaultMinListRowHeight, 20)
                  .navigationBarTitleDisplayMode(.inline)
                  .toolbar()
                {
                    ToolbarItemGroup(placement: .navigationBarLeading)
                    {
                        BackwardButton(url:"nademonai")
                    }
                }

            }
        }
        
    }
}
    
struct TopList_Previews: PreviewProvider {
    static var previews: some View {
        TopListView()
    }
}

