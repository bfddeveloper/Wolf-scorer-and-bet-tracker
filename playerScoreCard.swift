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
    @State private var plyr2totalfront = 0
    @State private var plyr3totalfront = 0
    @State private var plyr4totalfront = 0
    @State private var plyr5totalfront = 0
    @State private var nplyr1totalfront = 0
    @State private var nplyr2totalfront = 0
    @State private var nplyr3totalfront = 0
    @State private var nplyr4totalfront = 0
    @State private var nplyr5totalfront = 0
    @State private var netScoreArray = [Int]()
    @State private var myMax = 0
    @State private var winnerscore = 1000000
    @State private var winner = ""
    @State private var winnermessage = ""
    @State private var playerwinnermessage = ""
    @State private var wMOpaccity = 0.0
    @State private var indexOfWinner = 0
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            VStack{
                Text("Score Card")
                    .font(Font.custom("Marker Felt", size: 36))
                    .padding()
                
                VStack{
                    HStack{
                        CustomTextWithSub(player: players.Player1, handi: players.Player1H)
                        HStack{
                            ForEach(0..<9){ index in
                                TextField(frontholes[index], text: $plyr1scorefirst[index] )
                                    .frame(width: 15, height: 15)
                            }
                        }
                        HStack{
                            Text("\(grossscoretotal(totalscore: plyr1totalfront, playerArray: plyr1scorefirst))")
                                .font(.system(size: 25))
                                .bold()
                            Text("\(netscore(totalscore: plyr1totalfront, handi: players.Player1H, net:nplyr1totalfront, playerArray:plyr1scorefirst))")
                                .font(.system(size: 20))
                                .bold()
                        }
                    }
                    HStack{
                        CustomTextWithSub(player: players.Player2, handi: players.Player2H)
                        HStack{
                            ForEach(0..<9){ index in
                                TextField(frontholes[index], text: $plyr2scorefirst[index] )
                                    .frame(width: 15, height: 15)
                            }
                            HStack{
                                Text("\(grossscoretotal(totalscore: plyr2totalfront, playerArray: plyr2scorefirst))")
                                    .font(.system(size: 25))
                                    .bold()
                                Text("\(netscore(totalscore: plyr2totalfront, handi: players.Player2H, net:nplyr2totalfront, playerArray:plyr2scorefirst))")
                                    .font(.system(size: 20))
                                    .bold()
                            }
                        }
                    }
                    HStack{
                        CustomTextWithSub(player: players.Player3, handi: players.Player3H)
                        HStack{
                            ForEach(0..<9){ index in
                                TextField(frontholes[index], text: $plyr3scorefirst[index] )
                                    .frame(width: 15, height: 15)
                            }
                            HStack{
                                Text("\(grossscoretotal(totalscore: plyr3totalfront, playerArray: plyr3scorefirst))")
                                    .font(.system(size: 25))
                                    .bold()
                                Text("\(netscore(totalscore: plyr3totalfront, handi: players.Player3H, net:nplyr3totalfront, playerArray:plyr3scorefirst))")
                                    .font(.system(size: 20))
                                    .bold()
                            }
                        }
                    }
                    HStack{
                        CustomTextWithSub(player: players.Player4, handi: players.Player4H)
                        HStack{
                            ForEach(0..<9){ index in
                                TextField(frontholes[index], text: $plyr4scorefirst[index] )
                                    .frame(width: 15, height: 15)
                            }
                            HStack{
                                Text("\(grossscoretotal(totalscore: plyr4totalfront, playerArray: plyr4scorefirst))")
                                    .font(.system(size: 25))
                                    .bold()
                                Text("\(netscore(totalscore: plyr4totalfront, handi: players.Player4H, net:nplyr4totalfront, playerArray:plyr4scorefirst))")
                                    .font(.system(size: 20))
                                    .bold()
                            }
                        }
                    }
                    HStack{
                        CustomTextWithSub(player: players.Player5, handi: players.Player5H)
                        HStack{
                            ForEach(0..<9){ index in
                                TextField(frontholes[index], text: $plyr5scorefirst[index] )
                                    .frame(width: 15, height: 15)
                            }
                            HStack{
                                Text("\(grossscoretotal(totalscore: plyr5totalfront, playerArray: plyr5scorefirst))")
                                    .font(.system(size: 25))
                                    .bold()
                                Text("\(netscore(totalscore: plyr5totalfront, handi: players.Player5H, net:nplyr5totalfront, playerArray:plyr5scorefirst))")
                                    .font(.system(size: 20))
                                    .bold()
                            }
                        }
                    }
                    
                }
                Button("Who Won") {
                    netScoreArray.append(Int(netscore(totalscore: plyr1totalfront, handi: players.Player1H, net:nplyr1totalfront, playerArray:plyr1scorefirst))!)
                    netScoreArray.append(Int(netscore(totalscore: plyr2totalfront, handi: players.Player2H, net:nplyr2totalfront, playerArray:plyr2scorefirst))!)
                    netScoreArray.append(Int(netscore(totalscore: plyr3totalfront, handi: players.Player3H, net:nplyr3totalfront, playerArray:plyr3scorefirst))!)
                    netScoreArray.append(Int(netscore(totalscore: plyr4totalfront, handi: players.Player4H, net:nplyr4totalfront, playerArray:plyr4scorefirst))!)
                    netScoreArray.append(Int(netscore(totalscore: plyr5totalfront, handi: players.Player5H, net:nplyr5totalfront, playerArray:plyr5scorefirst))!)
                    wMOpaccity = 1
                    print(netScoreArray)

                    winnermessage = String(netScoreArray.min()!)
                    indexOfWinner = netScoreArray.firstIndex(of: Int(winnermessage)!)!
                    playerwinnermessage = String(describing: playerArray[indexOfWinner])

                    print(netScoreArray)
                }
                .buttonStyle(GrowingButton())
                
                Text("The player who won is \(playerwinnermessage), with a score of \(winnermessage)")
                    .opacity(wMOpaccity)
                    .bold()
                    .fontWeight(.heavy)
            }
        }
    }
    func grossscoretotal(totalscore: Int, playerArray: Array<Any>) -> String {
        var totalscore = totalscore
        for number in 0..<9 {
            totalscore += Int(playerArray[number] as! String) ?? 0
        }
        return String(totalscore)
    }
    func netscore(totalscore: Int, handi: String, net: Int, playerArray: Array<Any>) -> String{
        var net = net
        var totalscore = totalscore
        for number in 0..<9 {
            totalscore += Int(playerArray[number] as! String) ?? 0
        }
        net = (Int(totalscore) - ((Int(handi) ?? 0)/2))
        return String(net)
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

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
