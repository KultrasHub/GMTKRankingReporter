//
//  DicingPanel.swift
//  GMTKRankingReporter
//
//  Created by Khoa Tran Nguyen Anh on 30/07/2022.
//

import SwiftUI
import Foundation
struct DicingPanel: View {
    @Binding var viewSelectionValue : Int?
    @Binding var safeValue : Int
    let diceSymbols=["Dice_0","Dice_1","Dice_2","Dice_3","Dice_4","Dice_5","Dice_6","Dice_7"]
    let highestDiceValue=7
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
                        self.selected[0] = Int.random(in: 0...self.highestDiceValue)
                        total = total + self.selected[0]
                        self.selected[1] = Int.random(in: 0...self.highestDiceValue)
                        total = total + self.selected[1]
                        self.selected[2] = Int.random(in: 0...self.highestDiceValue)
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
            
            DicingPanel(viewSelectionValue: .constant(0),safeValue: .constant(0))
        }
    }
}
