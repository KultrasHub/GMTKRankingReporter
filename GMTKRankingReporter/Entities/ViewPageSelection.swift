/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Anh Khoa
  ID: s3863956
  Created  date: 30/07/2022
  Last modified: 30/07/2022
  Acknowledgement: Personal coding
*/

import Foundation
enum ViewSelection
{
    case starting, about, list,randomList
}
class SelectionViewModel: ObservableObject {
    var currentRow: Int = -1 {
        didSet {
            self.selection = currentRow
        }
    }

    @Published var selection: Int? = -1
}
