//
/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Anh Khoa
  ID: s3863956
  Created  date: 29/07/2022
  Last modified: 30/07/2022
  Acknowledgement: Personal coding
*/
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
