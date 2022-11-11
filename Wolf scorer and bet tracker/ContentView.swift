//
//  ContentView.swift
//  Wolf scorer and bet tracker
//
//  Created by Brody Dickson on 11/10/22.
//

import SwiftUI

struct Players {
    var Player1 = ""
    var Player2 = ""
    var Player3 = ""
    var Player4 = ""
    var Player5 = ""
    
    var Player1H = ""
    var Player2H = ""
    var Player3H = ""
    var Player4H = ""
    var Player5H = ""

}



struct ContentView: View {
    @State private var players = Players()
    var body: some View{
        VStack{
            HStack{
                Text("Players")
                Spacer()
                Text("Handicap numbers")
            }
            HStack{
                Spacer()
                Text("1")
                CustomTextFieldPlayer(placeholder: "Player 1", variable: $players.Player1)
                CustomTextFieldHandi(placeholder: "#1", variable: $players.Player1H)
                Spacer()

            }
            HStack{
                Spacer()
                Text("2")
                CustomTextFieldPlayer(placeholder: "Player 2", variable: $players.Player2)
                CustomTextFieldHandi(placeholder: "#2", variable: $players.Player2H)
                Spacer()
            }
            NavigationLink("Enter Scorecard", destination: playerScoreCard(players: players))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct playerHandicapEntry: View {
//    @State private var players = Players()
//    var body: some View{
//        VStack{
//            HStack{
//                Text("Players")
//                Text("Handicap numbers")
//            }
//            HStack{
//                Text("1")
//
//                CustomTextFieldPlayer(placeholder: "Player 1", variable: $players.Player1)
//
//                CustomTextFieldHandi(placeholder: "#1", variable: $players.Player1H)
//
//            }
//            HStack{
//                Text("2")
//                CustomTextFieldPlayer(placeholder: "Player 2", variable: $players.Player2)
//
//                CustomTextFieldHandi(placeholder: "#2", variable: $players.Player2H)
//
//            }
//        }
//    }
//}

struct CustomTextFieldPlayer: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

struct CustomTextFieldHandi: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
            .frame(width: 25, height: 25)
    }
}
