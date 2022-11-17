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
    var body: some View {
        VStack{
            VStack{
                CustomTextWithSub(player: players.Player1, handi: players.Player1H)
            }
            Text(players.Player1)
            Text(players.Player2)
            Text(players.Player3)
            Text(players.Player4)
            Text(players.Player5)
            Text("\(playerArray[0])")
            
            
            
            
            //this doesnt work
            
            
//                    .onAppear { // Prefer, Life cycle method
//                        self.playerArray.append(players.Player1)
//                           }
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
                .offset(x: 10, y: 12)
                .font(.system(size: 12))
                .fontWeight(.heavy)
                
            
                
            
        }
        
    }
}

struct playerScoreCard_Previews: PreviewProvider {
    static var previews: some View {
        playerScoreCard(players: Players(), playerArray: ["Harry"])
    }
}
