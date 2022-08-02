//
//  ViewPageSelection.swift
//  GMTKRankingReporter
//
//  Created by Khoa Tran Nguyen Anh on 30/07/2022.
//

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
