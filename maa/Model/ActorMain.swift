//
//  ActorMain.swift
//  maa
//
//  Created by idghst on 2023/04/30.
//

import SwiftUI

struct ActorMain: Identifiable {
    var id: Int
    var image: String
    var offset: CGFloat
    var title: String
}

var mainActors = [
    ActorMain(id: 0, image: "GoYounJung_1", offset: 0, title: "고윤정\nGO YOUNJUNG"),
    ActorMain(id: 1, image: "HongSuZu_1", offset: 0, title: "홍수주\nHONG SUZU"),
    ActorMain(id: 2, image: "RohYoonSeo_1", offset: 0, title: "노윤서\nROH YOONSEO"),
    ActorMain(id: 3, image: "SungZiYoung_1", offset: 0, title: "성지영\nSUNG ZIYOUNG"),
    ActorMain(id: 4, image: "BeakYaeIn_1", offset: 0, title: "백예인\nBEAK YAEIN"),
    ActorMain(id: 5, image: "BeaGangHee_1", offset: 0, title: "배강희\nBAE GANGHEE"),
    ActorMain(id: 6, image: "JoHyeJoo_1", offset: 0, title: "조혜주\nJO HYEJOO"),
    ActorMain(id: 7, image: "JungDaBin_1", offset: 0, title: "정다빈\nJUNG DABIN"),
]
