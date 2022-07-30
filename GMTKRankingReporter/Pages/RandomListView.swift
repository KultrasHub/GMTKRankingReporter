//
//  RandomListView.swift
//  GMTKRankingReporter
//
//  Created by Khoa Tran Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct RandomListView: View {
    @Binding var active: ViewSelection
    @StateObject var vm=SelectionViewModel()
    //there are 20 elements so there will be 20 box
    var body: some View{
        ZStack{
        NavigationView
        {
            ZStack
            {
                List(gameData.indices)
                {
                    index in
                    let profile=gameData[index]

                    NavigationLink(tag:index,selection:$vm.selection)
                    {
                        GameProfileView(profile: profile)
                    }
                      label:{
                           EmptyView()
                      }

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
                Image("20SideDice")
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .overlay(
                     Text(String(vm.currentRow))
                         .font(.system(size:120).weight(.bold))
                         .foregroundColor(.white)
                 )
                 .offset(y:-50)
            }
        }.accentColor(.white)
            DicingPanel(viewSelectionValue: $vm.selection,safeValue: $vm.currentRow)
        }
    }
}

struct RandomListView_Previews: PreviewProvider {
    static var previews: some View {
        RandomListView(active: .constant(.starting))
    }
}
