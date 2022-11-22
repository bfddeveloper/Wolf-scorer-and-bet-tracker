//
//  playerScoreCard.swift
//  Wolf scorer and bet tracker
//
//  Created by Brody Dickson on 11/11/22.
//

import SwiftUI
struct playerScoreCard: View {
    let players : Players
    let playerArray : [String]
    let handicapArray :  [String]
    @State private var frontholes = ["1","2","3","4","5","6","7","8","9"]
    @State private var plyr1scorefirst = ["", "", "", "", "", "", "", "", ""]
    @State private var plyr2scorefirst = ["", "", "", "", "", "", "", "", ""]
    @State private var plyr3scorefirst = ["", "", "", "", "", "", "", "", ""]
    @State private var plyr4scorefirst = ["", "", "", "", "", "", "", "", ""]
    @State private var plyr5scorefirst = ["", "", "", "", "", "", "", "", ""]
    @State private var plyr1totalfront = 0
    var body: some View {
        VStack{
            VStack{
                HStack{
                    CustomTextWithSub(player: players.Player1, handi: players.Player1H)
                    HStack{
                        ForEach(0..<9){ index in
                            TextField(frontholes[index], text: $plyr1scorefirst[index] )
                                .frame(width: 20, height: 20)
                        }
                    }
                    Text("\(plyr1totalfront)")
                        .font(.system(size: 25))
                        .bold()
                }
                

                HStack{
                    CustomTextWithSub(player: players.Player2, handi: players.Player2H)
                    HStack{
                        ForEach(0..<9){ index in
                            TextField(frontholes[index], text: $plyr2scorefirst[index] )
                                .frame(width: 25, height: 25)
                        }
                    }
                }
                HStack{
                    CustomTextWithSub(player: players.Player3, handi: players.Player3H)
                    HStack{
                        ForEach(0..<9){ index in
                            TextField(frontholes[index], text: $plyr3scorefirst[index] )
                                .frame(width: 25, height: 25)
                        }
                    }
                }
                
            }
            VStack{
                HStack{
                        ForEach(0..<9){ index in
                            Text(frontholes[index])
                        }
                }
            }
        }
    }
    
}
struct CustomTextWithSub: View {
    let player : String
    let handi : String
    var body: some View {
        HStack{
            Text(player)
                .bold()
            Text(handi)
                .offset(x: -5, y: 10)
                .font(.system(size: 12))
                .fontWeight(.heavy)
        }
        .frame(width: 100, height: 30, alignment: .leading)
    }
}

struct playerScoreCard_Previews: PreviewProvider {
    static var previews: some View {
        playerScoreCard(players: Players(), playerArray: ["Harry"], handicapArray: ["1"])
    }
}

let columns = [
    
        GridItem(.adaptive(minimum: 250)),
    ]
                          
let rows = [
    
    GridItem(.fixed(25))
    
]

struct player1scoresheet {
    var hole1 = ""
    var hole2 = ""
    var hole3 = ""
    var hole4 = ""
    var hole5 = ""
    var hole6 = ""
    var hole7 = ""
    var hole8 = ""
    var hole9 = ""


}


