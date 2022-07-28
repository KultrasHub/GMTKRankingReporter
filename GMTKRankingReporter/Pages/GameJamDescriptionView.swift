//
//  GameJamDescriptionView.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 27/07/2022.
//

import SwiftUI
struct JamDescriptionView : View{
    let textBoxWidth = UIScreen.main.bounds.size.width*0.8

    var body: some View{
        ScrollView{
            ZStack{
                CircleHeader()
                VStack{
                    HStack(alignment: .top){
                        BackwardButton(url: "Something")
                        Spacer()
                        Rectangle().frame(width: 0, height: 320)
                    }.padding()
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(.white)
//                        .frame(width: textBoxWidth,height:80, alignment: .center)
//                        .shadow(radius: 7)
                    ContentText(intro: "What is a GAME JAM", description: "content right now, I just typed somethign to add certain content for this stupid box so ... keep reading becasue there are no thign here to read... ok I'm gonna stop in just couples more words!")
                    ContentText(intro:"Theme for GMTK GAME JAM 2022",description: "It's roll of the dice, This is a very challenging theme. Dicing is a random task itself which may take a way player agency. However, the creativity of developers participated in the jam is nut, to actually made dice games, without randomness")
                    ContentText(intro: "About this app!", description: "This app will present you the top 20 games of the jam")
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}
struct JamDescriotion_Preview:PreviewProvider{
    static var previews: some View{
        JamDescriptionView()
    }
}
