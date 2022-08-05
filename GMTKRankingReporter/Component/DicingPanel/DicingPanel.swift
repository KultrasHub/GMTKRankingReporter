/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Tran Nguyen Anh Khoa
  ID: s3863956
  Created  date: 30/07/2022
  Last modified: 02/08/2022
  Acknowledgement: Personal coding
*/

import SwiftUI
import Foundation
struct DicingPanel: View {
    @Binding var viewSelectionValue : Int?
    @Binding var safeValue : Int
    let diceSymbols=["Dice_0","Dice_1","Dice_2","Dice_3","Dice_4","Dice_5","Dice_6","Dice_7"]
    let highestDiceValue=8
    @State var selected = [0,0,0]
    var body: some View {
        Rectangle()
            .fill(ColorConstant.lightPink)
            .frame(width: SizeConstant.screenWidth, height: 200, alignment: .center)
            .overlay(
                VStack{
                    HStack(spacing:10){
                        Spacer()
                        Image(diceSymbols[selected[0]])
                            .frame(width: SizeConstant.diceSize, height: SizeConstant.diceSize)
                        Spacer()
                        Image(diceSymbols[selected[1]])
                            .frame(width: SizeConstant.diceSize, height: SizeConstant.diceSize)
                        Spacer()
                        Image(diceSymbols[selected[2]])
                            .frame(width: SizeConstant.diceSize, height: SizeConstant.diceSize)
                        Spacer()
                    }.padding(.top,-80)
                    
                    Button(action: {
                        var total=0
                        //randomise the dice here
                        self.selected[0] = Int.random(in: 0..<8)
                        total = total + self.selected[0]
                        self.selected[1] = Int.random(in: 0..<8)
                        total = total + self.selected[1]
                        self.selected[2] = Int.random(in: 0..<8)
                        total = total + self.selected[2]

                        if(total>=20)
                        {
                            total = total - 19//will return 1 or 2
                        }
                        viewSelectionValue=total
                        safeValue=total
                        //print("view selection value:"+String(viewSelectionValue!))
                    }, label: {
                        SelectButton(content: "Random View")
                    })
                }
            )
            .position(x: SizeConstant.halfScreen, y: SizeConstant.screenHeight-100)
            
    }
}

struct DicingPanel_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Text("will this be pushed down")
            DicingPanel(viewSelectionValue: .constant(0),safeValue: .constant(0))
        }
    }
}
