//
//  SystemImage_Text.swift
//  GMTKRankingReporter
//
//  Created by Khoa Tran Nguyen Anh on 29/07/2022.
//

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
