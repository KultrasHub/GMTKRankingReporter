//
//  ContentView.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 27/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var currentView:ViewSelection = .starting
    var body: some View {
        switch currentView {
        case .starting:
            StartingView(active: $currentView)
        case .about:
            JamDescriptionView(active: $currentView)
        case .list:
            TopListView(active: $currentView)
        case .randomList:
            RandomListView(active: $currentView)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

