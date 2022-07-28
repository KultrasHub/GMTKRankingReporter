//
//  StartingView.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 27/07/2022.
//

import SwiftUI

struct StartingView: View {
    
    var body: some View {
        ScrollView{
            ZStack{
                CircleHeader()
                VStack{
                    Rectangle()
                        .frame(width: 0, height: 340)
                    Text("Intro to game jam 2022")
                        .fontWeight(.heavy)
                        .font(.system(size:25))
                        .padding(20)
                        .frame(height:50)
                    Spacer()
                    Text("There are 22007 participants and in 48 hours time, they had developed over 6000 games. Making this event one of the biggest game jams! ")
                        .fontWeight(.light)
                        .font(.system(size:16))
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(20)
                        .opacity(0.6)
                        .multilineTextAlignment(.center)
                        .frame(height:100)
                    Spacer()
                    SelectButton(content: "Get Started", url: "nothing for now")
                        .frame(height:100)
                    Spacer()
                    SelectText(intro: "Not sure what game jam is?", click: "Read more here")
                        .frame(height:50)
                        .offset(x: 0, y: 10)
                    Spacer()
                    ProfileText(intro: "This app is developped by:", name: "name: Tran Nguyen Anh Khoa", sid: "sid:  s3863956")
                        .frame(height:100)
                        .edgesIgnoringSafeArea(.bottom)

                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct Starting_Previews: PreviewProvider {
    static var previews: some View {
        StartingView()
    }
}