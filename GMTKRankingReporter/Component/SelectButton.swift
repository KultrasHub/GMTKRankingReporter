//
//  SelectButton.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 27/07/2022.
//

import SwiftUI
struct SelectButton:View{
    let content : String
    let url:String
    
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
            .frame(width: 200, height: 60, alignment: .center)
            .shadow(color: ColorConstant.shadowPink, radius: 4, x: 0, y: 5).opacity(0.8)
        Text(content)
                .foregroundColor(.white)
                .fontWeight(.heavy)
                .font(.system(size: 20))
                .shadow(radius: 5)

        }
    }
}

struct BackwardButton: View{
    let url:String
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
        SelectButton(content: "Click Me",url: "something")
            //BackwardButton(url: "nothign")

    }
}
