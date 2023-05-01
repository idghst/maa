//
//  MainPhoto.swift
//  maa
//
//  Created by idghst on 2023/05/02.
//

import SwiftUI

struct MainPhoto: View {
    
    @Binding var scrolled: Int
    @Binding var actorIndex: Int
    @Binding var detailViewActive: Bool
    @Binding var detailActorsPhotoResult: [ActorDetailPhoto]
    @Binding var filmoResult: [Filmo]
    @Binding var detailTitle: String
    
    var body: some View {
        ZStack {
            ForEach(mainActors.reversed()) { story in
                HStack {
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
                        Image(story.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(
                                width: calculateWidth(),
                                height: (UIScreen.main.bounds.height / 1.8) - (CGFloat(story.id - scrolled) * 50)
                            )
                            .cornerRadius(15)
                        
                        VStack(alignment: .leading, spacing: 18) {
                            HStack {
                                Text(story.title)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            }
                            
                            Button {
                                self.actorIndex = story.id
                                self.detailViewActive = true
                                self.detailTitle = story.title
                                
                                if actorIndex == 0 {
                                    self.detailActorsPhotoResult = detailActorsPhoto_0
                                    self.filmoResult = filmo_0
                                }
                                if actorIndex == 1 {
                                    self.detailActorsPhotoResult = detailActorsPhoto_1
                                    self.filmoResult = filmo_1
                                }
                                if actorIndex == 2 {
                                    self.detailActorsPhotoResult = detailActorsPhoto_2
                                    self.filmoResult = filmo_2
                                }
                                if actorIndex == 3 {
                                    self.detailActorsPhotoResult = detailActorsPhoto_3
                                    self.filmoResult = filmo_3
                                }
                                if actorIndex == 4 {
                                    self.detailActorsPhotoResult = detailActorsPhoto_4
                                    self.filmoResult = filmo_4
                                }
                                if actorIndex == 5 {
                                    self.detailActorsPhotoResult = detailActorsPhoto_5
                                    self.filmoResult = filmo_5
                                }
                                if actorIndex == 6 {
                                    self.detailActorsPhotoResult = detailActorsPhoto_6
                                    self.filmoResult = filmo_6
                                }
                                if actorIndex == 7 {
                                    self.detailActorsPhotoResult = detailActorsPhoto_7
                                    self.filmoResult = filmo_7
                                }
                            } label: {
                                Text("Read More")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 6)
                                    .padding(.horizontal, 25)
                                    .background(.blue)
                                    .clipShape(Capsule())
                            }
                            .navigationDestination(isPresented: $detailViewActive) {
                                Detail(
                                    actorIndex: $actorIndex,
                                    detailActorsPhoto: $detailActorsPhotoResult,
                                    filmo: $filmoResult,
                                    title: $detailTitle
                                )
                            }
                            
                        }
                        .frame(width: calculateWidth() - 100)
                        .padding(.leading, 20)
                        .padding(.bottom, 20)
                    }
                    .offset(x: story.id - scrolled <= 2 ? CGFloat(story.id - scrolled) * 30 : 60)
                    
                    Spacer(minLength: 0)
                }
                .contentShape(Rectangle())
                .offset(x: story.offset)
                .gesture(DragGesture().onChanged({ value in
                    withAnimation {
                        if value.translation.width < 0 && story.id != mainActors.last!.id {
                            mainActors[story.id].offset = value.translation.width
                        }
                        else {
                            if story.id > 0 {
                                mainActors[story.id - 1].offset = -(calculateWidth() + 60) + value.translation.width
                            }
                        }
                        
                        
                    }
                }).onEnded({ value in
                    withAnimation {
                        if value.translation.width < 0 {
                            if -value.translation.width > 180 && story.id != mainActors.last!.id {
                                mainActors[story.id].offset = -(calculateWidth() + 60)
                                scrolled += 1
                            }
                            else {
                                mainActors[story.id].offset = 0
                            }
                        }
                        else {
                            if story.id > 0 {
                                if value.translation.width > 180 {
                                    mainActors[story.id - 1].offset = 0
                                    scrolled -= 1
                                }
                                else {
                                    mainActors[story.id - 1].offset = -(calculateWidth() + 60)
                                }
                            }
                        }
                    }
                }))
            }
        }
        .frame(height: UIScreen.main.bounds.height / 1.8)
        .padding(.vertical, 30)
        .padding(.horizontal, 25)
    }
    
    func calculateWidth() -> CGFloat {
        let screen = UIScreen.main.bounds.width - 50
        let width = screen - ( 2 * 30 )
        return width
    }
    
}
