//
//  DetailPhoto.swift
//  maa
//
//  Created by idghst on 2023/05/02.
//

import SwiftUI

struct DetailPhoto: View {
    
    @Binding var scrolled: Int
//    @Binding var actorIndex: Int
//    @Binding var detailViewActive: Bool
    @Binding var detailActorsPhoto: [ActorDetailPhoto]
//    @Binding var filmoResult: [Filmo]
//    @Binding var detailTitle: String
    
    var body: some View {
        ZStack {
            ForEach(detailActorsPhoto.reversed()) { actorPhoto in
                HStack {
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
                        Image(actorPhoto.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(
                                width: calculateWidth(),
                                height: (UIScreen.main.bounds.height / 1.8) - (CGFloat(actorPhoto.id - scrolled) * 50)
                            )
                            .cornerRadius(15)
                        
                    }
                    .offset(x: actorPhoto.id - scrolled <= 2 ? CGFloat(actorPhoto.id - scrolled) * 30 : 60)
                    
                    Spacer(minLength: 0)
                }
                .contentShape(Rectangle())
                .offset(x: actorPhoto.offset)
                .gesture(DragGesture().onChanged({ value in
                    withAnimation {
                        if value.translation.width < 0 && actorPhoto.id != detailActorsPhoto.last!.id {
                            detailActorsPhoto[actorPhoto.id].offset = value.translation.width
                        }
                        else {
                            if actorPhoto.id > 0 {
                                detailActorsPhoto[actorPhoto.id - 1].offset = -(calculateWidth() + 60) + value.translation.width
                            }
                        }
                        
                        
                    }
                }).onEnded({ value in
                    withAnimation {
                        if value.translation.width < 0 {
                            if -value.translation.width > 180 && actorPhoto.id != detailActorsPhoto.last!.id {
                                detailActorsPhoto[actorPhoto.id].offset = -(calculateWidth() + 60)
                                scrolled += 1
                            }
                            else {
                                detailActorsPhoto[actorPhoto.id].offset = 0
                            }
                        }
                        else {
                            if actorPhoto.id > 0 {
                                if value.translation.width > 180 {
                                    detailActorsPhoto[actorPhoto.id - 1].offset = 0
                                    scrolled -= 1
                                }
                                else {
                                    detailActorsPhoto[actorPhoto.id - 1].offset = -(calculateWidth() + 60)
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
