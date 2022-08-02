/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Anh Khoa
  ID: s3863956
  Created  date: 29/07/2022
  Last modified: 30/07/2022
  Acknowledgement: Personal coding
*/
import SwiftUI

struct SystemImage_Text: View {
    let imageName:String
    let contentName:String
    let contentValue:String
    var body: some View {
        
        HStack{
            Image(systemName: imageName)
            Text(contentName+": ")
            Text(contentValue)
        }
        .font(.system(size:15).weight(.semibold))
    }
}

struct SystemImage_Text_Previews: PreviewProvider {
    static var previews: some View {
        SystemImage_Text(imageName: "star", contentName: "score", contentValue: "4000" )
    }
}
