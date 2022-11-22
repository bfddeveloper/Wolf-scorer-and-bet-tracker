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
    @State private var playerArray = [String]()
    @State private var isShowingDetailView = false
    @State private var handicapArray = [String]()

    var body: some View{
        NavigationView {
            
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
                HStack{
                    Spacer()
                    Text("3")
                    CustomTextFieldPlayer(placeholder: "Player 3", variable: $players.Player3)
                    CustomTextFieldHandi(placeholder: "#3", variable: $players.Player3H)
                    Spacer()
                    
                }
                HStack{
                    Spacer()
                    Text("4")
                    CustomTextFieldPlayer(placeholder: "Player 4", variable: $players.Player4)
                    CustomTextFieldHandi(placeholder: "#4", variable: $players.Player4H)
                    Spacer()
                    
                }
                HStack{
                    Spacer()
                    Text("5")
                    CustomTextFieldPlayer(placeholder: "Player 5", variable: $players.Player5)
                    CustomTextFieldHandi(placeholder: "#%", variable: $players.Player5H)
                    Spacer()
                    
                }
                VStack{
                    NavigationLink(destination: playerScoreCard(players: players, playerArray: playerArray, handicapArray: handicapArray),  isActive: $isShowingDetailView) { EmptyView()}
                    Button("Add Players") {
                        isShowingDetailView = true
                        playerArray.append(players.Player1)
                        playerArray.append(players.Player2)
                        playerArray.append(players.Player3)
                        playerArray.append(players.Player4)
                        playerArray.append(players.Player5)
                        handicapArray.append(players.Player1H)
                        handicapArray.append(players.Player2H)
                        handicapArray.append(players.Player3H)
                        handicapArray.append(players.Player4H)
                        handicapArray.append(players.Player5H)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


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
