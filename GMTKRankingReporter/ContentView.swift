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

