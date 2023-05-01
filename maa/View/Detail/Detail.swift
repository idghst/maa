//
//  Detail.swift
//  maa
//
//  Created by idghst on 2023/04/30.
//

import SwiftUI

struct Detail: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @Binding var actorIndex: Int
    
    @State var index = 0
    
    @Binding var detailActorsPhoto: [ActorDetailPhoto]
    @Binding var filmo: [Filmo]
    
    @State var scrolled = 0
    
    @Binding var title: String
    
    var body: some View {
        NavigationStack{
            VStack {
                VStack {
                    
                    DetailTab(index: $index)
                    
                    // 카드 ...
                    
                    // photo
                    if index == 0 {
                        DetailPhoto(
                            scrolled: $scrolled,
                            detailActorsPhoto: $detailActorsPhoto
                        )
                    }
                    
                    // filmo
                    if index == 1 {
                        FilmoView(filmo: $filmo)
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
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.large)
            .navigationBarBackButtonHidden()
            .navigationBarItems(
                leading:
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        HStack {
                            Image(systemName: "arrowtriangle.backward.fill")
                        }
                        .foregroundColor(.primary)
                    })
                    
            )
        }
    }
    
    func calculateWidth() -> CGFloat {
        let screen = UIScreen.main.bounds.width - 50
        let width = screen - ( 2 * 30 )
        return width
    }
}
