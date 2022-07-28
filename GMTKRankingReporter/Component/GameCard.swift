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
        VStack{
            VStack(alignment:.leading)
            {
                Image("FireAndDice").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:SizeConstant.cardWidth, alignment: .bottomLeading)
                    .cornerRadius(30)
                    .overlay(alignment: .bottomLeading)
                        {Text("50 hours")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 130, height: 40, alignment: .center)
                                .font(.system(size: 20))
                                .background(ColorConstant.lightPink)
                                .cornerRadius(0,corners: .topLeft)
                                .cornerRadius(roundCornerSize,corners: [.topRight,.bottomLeft,.bottomRight])
              
                        }
                Text("Fire and Dice")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                let scoreValue="Score: "+String(4405)
                //description
                HStack{
                    Text("30MB")
                        .fontWeight(.bold)
                        .opacity(0.6)
                        .foregroundColor(.black)
                    Text(scoreValue)
                        .fontWeight(.semibold)
                    Text("Deck builder Roguelike")
                        .fontWeight(.light)
                        .opacity(0.4)
                }
            }
        }
    }

}

struct GameCard_Preview:PreviewProvider
{
    static var previews: some View{
        GameCard(profile: profiles[0])
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
