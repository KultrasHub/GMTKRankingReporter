/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Anh Khoa
  ID: s3863956
  Created  date: 27/07/2022
  Last modified: 30/07/2022
  Acknowledgement: Personal coding
*/

import SwiftUI
import Foundation

struct TopListView: View{
    @Binding var active: ViewSelection
    //there are 20 elements so there will be 20 box
    var body: some View{
        NavigationView
        {
            ZStack
            {
                List(gameData)
                {
                    profile in
                    NavigationLink
                    {
                        GameProfileView(profile: profile)
                    }
                label:
                    {
                        HStack{
                            Spacer()
                            GameCard(profile: profile)
                            Spacer()
                        }.listRowBackground(Color.clear)
                            .listRowInsets(EdgeInsets(top: 5, leading: 0, bottom: 10, trailing: 0))
                    }.listRowInsets(EdgeInsets(top: 5, leading: 0, bottom: 10, trailing: 0))
                        .frame(alignment: .center)
                
                }.navigationTitle("Featured Games")
                    .environment(\.defaultMinListRowHeight, 20)
                  .navigationBarTitleDisplayMode(.inline)
                  .toolbar()
                {
                    ToolbarItemGroup(placement: .navigationBarLeading)
                    {
                        Button(action: {active = .starting}, label: {
                            BackwardButton()
                        })
                    }
                }

            }
        }.accentColor(.white)
    }
}

struct TopList_Previews: PreviewProvider {
    static var previews: some View {
        TopListView(active: .constant(.starting))
    }
}

