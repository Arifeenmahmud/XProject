//
//  StatText.swift
//  PlayerInfo
//
//  Created by Arifeen Mahmud on 4/1/20.
//  Copyright © 2020 Arifeen Mahmud. All rights reserved.
//

import SwiftUI

struct StatText: View {
    var statName: String
    var statValue: String
    var body: some View {
        HStack{
            Text(statName + ":").font(.system(size: 45)).fontWeight(.bold).padding(.leading, 30)
            Text(statValue).font(.system(size: 45)).fontWeight(.light).foregroundColor(.green).padding(.trailing, 30)
            Spacer()
        }
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "Age", statValue: "28")
    }
}
