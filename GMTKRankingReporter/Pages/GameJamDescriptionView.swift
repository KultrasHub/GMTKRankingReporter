//
//  GameJamDescriptionView.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 27/07/2022.
//

import SwiftUI
struct JamDescriptionView : View{
    let textBoxWidth = UIScreen.main.bounds.size.width*0.8
    @Binding var active: ViewSelection
    var body: some View{
        ScrollView{
            ZStack{
                CircleHeader()
                VStack{
                    HStack(alignment: .top){
                        Button(action: {active = .starting}, label: {BackwardButton()})
                        Spacer()
                        Rectangle().frame(width: 0, height: 320)
                    }.padding()
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(.white)
//                        .frame(width: textBoxWidth,height:80, alignment: .center)
//                        .shadow(radius: 7)
                    ContentText(intro: "What is a GAME JAM", description: jamDescription[0])
                    ContentText(intro:"Theme for GMTK GAME JAM 2022",description: jamDescription[1])
                    ContentText(intro: "About this app!", description: jamDescription[2])
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}
struct JamDescriotion_Preview:PreviewProvider{
    static var previews: some View{
        JamDescriptionView(active: .constant(.starting))
    }
}
