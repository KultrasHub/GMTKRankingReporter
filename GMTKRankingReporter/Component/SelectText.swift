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
struct SelectText: View{
    let intro:String
    let click:String
    @Binding var active: ViewSelection
    var viewSelectionValue:ViewSelection
    var body: some View{
        HStack(spacing:4){
            Text(intro)
                .font(.system(size:16))
                .fontWeight(.light)
                .foregroundColor(.black)
                .font(.system(size: 16))
                .opacity(0.6)
                .padding(.vertical,10)
            Button(action:{ active = viewSelectionValue}, label: {
            Text(click)
                .fontWeight(.bold)
                .foregroundColor(ColorConstant.heavyPink)
            })
            
        }
    }
}

struct ProfileText: View{
    let intro:String
    let name:String
    let sid:String
    var body: some View{
        VStack(alignment:.center ,spacing:10){
            Text(intro)
                .fontWeight(.bold)
                .font(.system(size: 18))
            VStack(alignment: .center,spacing: 5){
                Text(name)
                    .fontWeight(.light)
                Text(sid)
            }.font(.system(size: 14))
                .opacity(0.6)
        }
    }
}
struct ContentText:View{
    let intro:String
    let description:String
    var body: some View{
        VStack(alignment: .leading, spacing: 15)
        {
            Text(intro)
                .font(.system(size: 20))
                .fontWeight(.bold)
            RoundedRectangle(cornerRadius: 50)
                .fill(
                    LinearGradient(gradient: Gradient(colors: ColorConstant.simplePaltter),
                                   startPoint: .bottomTrailing,
                                   endPoint: .topLeading)
                )
                .frame(width: 50 ,height: 6)
                .offset(x: 20, y: 0)
            Text(description)
                .font(.system(size: 16))
                .fontWeight(.light)
                .opacity(0.5)
        }
        .padding(20)
    }
}
struct SelectText_Preview:PreviewProvider
{
    static var previews: some View
    {
        VStack
        {
            SelectText(intro:"where to click",click:"here ofc",active: .constant(.starting),viewSelectionValue: .about)
            //ProfileText(intro: "This app is developped by:", name: "name: Tran Nguyen Anh Khoa", sid: "sid:  s3863956")
            //ContentText(intro: "This is a title", description: "this is a description so it is needed to be long to express all attribute I may miss in the description if I use a small text. This long is good enough I believe")
        }
    }
}
