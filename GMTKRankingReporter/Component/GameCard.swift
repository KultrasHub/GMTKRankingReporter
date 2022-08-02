/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Anh Khoa
  ID: s3863956
  Created  date: 27/07/2022
  Last modified: 30/07/2022
  Acknowledgement: Personal coding
*/
import SwiftUI
struct GameCard:View{
    var profile: GameProfile
    let roundCornerSize = CGFloat(15)
    var  body: some View{
        ZStack(alignment:.center){
          RoundedRectangle(cornerRadius: roundCornerSize)
                .fill(.white)
 
                .frame(width: SizeConstant.cardWidth, height: 255, alignment: .top)
                .padding(0)
                .overlay(
            VStack(alignment:.center)
            {
                Image(profile.imageName).resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:SizeConstant.cardWidth,height: 200, alignment: .center)
                    .clipShape(Rectangle())
                    .cornerRadius(roundCornerSize,corners:[.topLeft,.topRight])
                    .overlay(alignment: .bottomLeading)
                {Text(profile.hours)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 130, height: 30, alignment: .center)
                                .font(.system(size: 20))
                                .background(ColorConstant.lightPink)
                                .cornerRadius(roundCornerSize,corners: .topRight)
                                .opacity(0.9)
              
                        }
                .padding(.bottom,-5)
                Text(profile.name)
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .padding(.leading,7)
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
                .padding(.leading,7)
            }
            )
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
        ZStack{
            Color(.gray).edgesIgnoringSafeArea(.all)
        GameCard(profile: gameData[0])
        }
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
