//
//  PlayerList.swift
//  PlayerInfo
//
//  Created by Arifeen Mahmud on 4/1/20.
//  Copyright © 2020 Arifeen Mahmud. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players){
                currentPlayer in
                NavigationLink(destination: ContentView(player: currentPlayer)){
                PlayerRow(player: currentPlayer).frame(height:90)
                }
            }.navigationBarTitle(Text("IOS Dev Batch-2020"))
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
