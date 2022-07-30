//
//  GameProfileView.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 28/07/2022.
//

import SwiftUI

struct GameProfileView: View {
    let profile:GameProfile
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading){
                //this image will always stay on top
                Image(profile.imageName).resizable()
                    .aspectRatio( contentMode: .fill)
                    .frame(width:SizeConstant.screenWidth, height: 200, alignment: .top)
                    .edgesIgnoringSafeArea(.top)
                    .clipShape(Rectangle())
                    .position(x: SizeConstant.halfScreen, y:100)

                //this image will always stay on top
                VStack(alignment:.leading,spacing:5){
                    HStack(alignment: .top){
                        //BackwardButton(url: "nademonai")
                        Spacer()
                        Rectangle()
                            .frame(width: 0, height: 190)
                    }.padding(.top,25)
                        .padding(.bottom,0)
                    HStack{
                        Text(profile.name)
                            .font(.headline .weight(.bold))
                        Spacer()
                        Text(profile.size)
                            .font(.footnote.weight(.light))
                            .opacity(0.8)
                            .foregroundColor(ColorConstant.heavyPink)
                    }
                    Text(profile.getAuthor())
                        .font(.system(size: 14).weight(.light))
                        .opacity(0.6)
                        
                    Text(profile.description)
                        .font(.system(size: 14) .weight(.light))
                        .padding(.top,10)
                    VStack(alignment:.leading,spacing:5){
                        SystemImage_Text(imageName: "star", contentName: "Score", contentValue: String(profile.score))
                        SystemImage_Text(imageName: "clock", contentName: "Development Time", contentValue: profile.hours)
                        SystemImage_Text(imageName: "target", contentName: "Genre", contentValue: profile.genre)
                    }
                    .padding(.top,14)

                    LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())], spacing: 20){
                        ForEach(profile.extraImage, id: \.self)
                        {
                            string in
                            PhotoCard(imageName:string)

                        }
                    }.frame(maxWidth: SizeConstant.screenWidth*0.9, maxHeight: .infinity, alignment: .center)
                        
                        //.padding([.leading,.trailing])
                        
                
                }
                .padding([.leading,.trailing])
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct GameProfileView_Previews: PreviewProvider {
    static var previews: some View {
        GameProfileView(profile: gameData[15])
    }
}
