//
//  PhotoCard.swift
//  GMTKRankingReporter
//
//  Created by Khoa Tran Nguyen Anh on 29/07/2022.
//

import SwiftUI

struct PhotoCard: View {
    let imageName:String
    var body: some View {

                    Image(imageName).resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: SizeConstant.photoCardSize, height: SizeConstant.photoCardSize, alignment: .center)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .shadow(radius: 4)
    }
}

struct PhotoCard_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.gray
        PhotoCard(imageName: "FireAndDice_main")
        }
    }
}
