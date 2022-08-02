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
struct SelectButton:View{
    let content : String
    
    var body: some View{
        ZStack
        {
        RoundedRectangle(cornerRadius: 10)
                .fill(ColorConstant.heavyPink)
//            .fill(
//                LinearGradient(gradient: Gradient(colors: ColorConstant.colorPalette),
//                               startPoint: .bottomTrailing,
//                               endPoint: .topLeading)
//            )
            .frame(width: 150, height: 50, alignment: .center)
            .shadow(color: ColorConstant.shadowPink, radius: 4, x: 0, y: 5).opacity(0.8)
        Text(content)
                .foregroundColor(.white)
                .fontWeight(.heavy)
                .font(.system(size: 20))
                .shadow(radius: 5)

        }
    }
}
struct BorderSelectButton:View{
    let content : String
    
    var body: some View{
        ZStack
        {
        RoundedRectangle(cornerRadius: 10)
                .stroke( ColorConstant.heavyPink,lineWidth: 3)
//            .fill(
//                LinearGradient(gradient: Gradient(colors: ColorConstant.colorPalette),
//                               startPoint: .bottomTrailing,
//                               endPoint: .topLeading)
//            )
            .frame(width: 150, height: 50, alignment: .center)
            
        Text(content)
                .foregroundColor(ColorConstant.heavyPink)
                .fontWeight(.heavy)
                .font(.system(size: 20))
                .shadow(radius: 5)

        }
    }
}
struct BackwardButton: View{
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(.black)
                .opacity(0.5)
                .frame(width: 50, height: 50, alignment: .center)
            Text("‹")
                .foregroundColor(.white)
                .font(.system(size: 60))
                .fontWeight(.heavy)
                .offset(x: 0, y: -4)
        }.edgesIgnoringSafeArea(.top)
            
    }
}

struct SelectButton_Preview:PreviewProvider
{
    static var previews: some View{
        VStack{
        SelectButton(content: "Click Me")
        BorderSelectButton(content: "Click Me")
        }
            //BackwardButton()

    }
}
