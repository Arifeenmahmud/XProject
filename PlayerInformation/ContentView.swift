//
//  ViewController.swift
//  PlayerInfo
//
//  Created by Arifeen Mahmud on 4/1/20.
//  Copyright © 2020 Arifeen Mahmud. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var player : Player
    var body: some View {
  VStack{
    Image(player.team.imageName).resizable().aspectRatio(contentMode: .fit)
    
    Image(player.imageName).clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x:0, y:-90).padding(.bottom, -78).shadow(radius: 100)
    
    Text(player.name).font(.system(size:32)).fontWeight(.heavy)

    StatText(statName: "Age", statValue: "\(player.age)")
    StatText(statName: "Height", statValue: player.height)
    StatText(statName: "Weight", statValue: "\(player.weight)Ibs")
    
        Spacer()
    
    
        }.edgesIgnoringSafeArea(.top)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(player: players[1])
    }
}

