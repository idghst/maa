//
//  Main.swift
//  maa
//
//  Created by idghst on 2023/04/30.
//

import SwiftUI

struct Main: View {
    
    @State var mainActors: [ActorMain]
    @State var detailActorsPhotoResult: [ActorDetailPhoto] = []
    @State var detailActorsPhoto_0: [ActorDetailPhoto]
    @State var detailActorsPhoto_1: [ActorDetailPhoto]
    @State var detailActorsPhoto_2: [ActorDetailPhoto]
    @State var detailActorsPhoto_3: [ActorDetailPhoto]
    @State var detailActorsPhoto_4: [ActorDetailPhoto]
    @State var detailActorsPhoto_5: [ActorDetailPhoto]
    @State var detailActorsPhoto_6: [ActorDetailPhoto]
    @State var detailActorsPhoto_7: [ActorDetailPhoto]
    @State var filmoResult: [Filmo]
    @State var filmo_maa: [Filmo]
    @State var filmo_0: [Filmo]
    @State var filmo_1: [Filmo]
    @State var filmo_2: [Filmo]
    @State var filmo_3: [Filmo]
    @State var filmo_4: [Filmo]
    @State var filmo_5: [Filmo]
    @State var filmo_6: [Filmo]
    @State var filmo_7: [Filmo]
    
    @State var index: Int
    
    @State var scrolled: Int = 0
    
    @State var detailViewActive: Bool = false
    @State var actorIndex: Int
    @State var detailTitle: String
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    
                    // tab
                    MainTab(index: $index)
                    
                    
                    /* 카드 뷰 */
                    
                    // intro
                    if index == 0 {
                        MainIntro()
                    }
                    
                    // filmo
                    if index == 1 {
                        FilmoView(filmo: $filmo_maa)
                    }
                    
                    // actor
                    if index == 2 {
                        MainPhoto(
                            scrolled: $scrolled,
                            actorIndex: $actorIndex,
                            detailViewActive: $detailViewActive,
                            detailActorsPhotoResult: $detailActorsPhotoResult,
                            filmoResult: $filmoResult,
                            detailTitle: $detailTitle
                        )
                    }
                    
                    
                    Spacer()
                }
            }
            .background(
                LinearGradient(
                    gradient: .init(colors: [Color("top"), Color("bottom")]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .edgesIgnoringSafeArea(.all)
            )
            .navigationBarTitle("MAA")
            .navigationBarTitleDisplayMode(.large)
        }
    }
    
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
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
        .preferredColorScheme(.dark)
    }
}
