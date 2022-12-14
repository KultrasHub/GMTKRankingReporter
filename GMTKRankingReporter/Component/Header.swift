/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Anh Khoa
  ID: s3863956
  Created  date: 27/07/2022
  Last modified: 02/08/2022
  Acknowledgement: Personal coding
*/

import SwiftUI

struct CircleHeader: View{
    let screenWidth = UIScreen.main.bounds.size.width

    var body: some View{

            ZStack{
                //background
                Image("Header_Background")   .resizable()
                    .edgesIgnoringSafeArea(.top)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: screenWidth)
                VStack(spacing:20){
                    Image("GAMEJAM").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                    Image("RollOfTheDice").resizable()
                        .aspectRatio(contentMode: .fit)
                }
                    
            }.edgesIgnoringSafeArea(.top)
            .position(x: screenWidth/2, y: 160)
            


    }
}
struct CircleHeader_Preview: PreviewProvider{
    static var previews: some View{
        CircleHeader()
    }
}
