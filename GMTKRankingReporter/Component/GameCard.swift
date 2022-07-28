//
//  GameCard.swift
//  GMTKRankingReporter
//
//  Created by Khoa on 27/07/2022.
//

import SwiftUI
struct GameCard:View{
    var profile: GameProfile
    let roundCornerSize = CGFloat(30)
    var  body: some View{
        ZStack(alignment:.center){
          
            VStack(alignment:.leading)
            {
                Image("FireAndDice").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:SizeConstant.cardWidth, alignment: .bottomLeading)
                    .cornerRadius(30)
                    .overlay(alignment: .bottomLeading)
                {Text(profile.hours)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 130, height: 40, alignment: .center)
                                .font(.system(size: 20))
                                .background(ColorConstant.lightPink)
                                .cornerRadius(0,corners: .topLeft)
                                .cornerRadius(roundCornerSize,corners: [.topRight,.bottomLeft,.bottomRight])
              
                        }
                Text(profile.name)
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                let scoreValue="Score: "+String(profile.score)
                //description
                HStack{
                    Text(profile.size)
                        .fontWeight(.bold)
                        .opacity(0.6)
                        .foregroundColor(.black)
                    Text(scoreValue)
                        .fontWeight(.semibold)
                    Text(profile.genre)
                        .fontWeight(.light)
                        .opacity(0.4)
                }
            }
        }
    }

}
struct TestProfile:View{
    let profile: GameProfile
    var body: some View{
        Text(profile.hours)
    }
}
struct TestAnything:View{
    let value: String
    var body: some View{
        Text(value)
    }
}
struct GameCard_Preview:PreviewProvider
{
    static var previews: some View{
        GameCard(profile: gameData[0])
    }
}
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
