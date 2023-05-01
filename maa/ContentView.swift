//
//  ContentView.swift
//  maa
//
//  Created by idghst on 2023/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Main(
            mainActors: mainActors,
            detailActorsPhoto_0: detailActorsPhoto_0,
            detailActorsPhoto_1: detailActorsPhoto_1,
            detailActorsPhoto_2: detailActorsPhoto_2,
            detailActorsPhoto_3: detailActorsPhoto_3,
            detailActorsPhoto_4: detailActorsPhoto_4,
            detailActorsPhoto_5: detailActorsPhoto_5,
            detailActorsPhoto_6: detailActorsPhoto_6,
            detailActorsPhoto_7: detailActorsPhoto_7,
            filmoResult: [],
            filmo_maa: filmo_maa,
            filmo_0: filmo_0,
            filmo_1: filmo_1,
            filmo_2: filmo_2,
            filmo_3: filmo_3,
            filmo_4: filmo_4,
            filmo_5: filmo_5,
            filmo_6: filmo_6,
            filmo_7: filmo_7,
            index: 0,
            scrolled: 0,
            actorIndex: 0,
            detailTitle: ""
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
