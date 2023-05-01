//
//  MainTab.swift
//  maa
//
//  Created by idghst on 2023/04/30.
//

import SwiftUI

struct MainTab: View {
    
    @Binding var index: Int
    
    var body: some View {
        // 탭 아이콘
        HStack {
            Text("Intro")
                .font(.system(size: 15))
            //                        .foregroundColor(index == 0 ? .white : Color("Color1").opacity(0.85))
                .foregroundColor(index == 0 ? .white : .red.opacity(0.85))
                .fontWeight(.bold)
                .padding(.vertical, 6)
                .padding(.horizontal, 20)
            //                        .background(Color("Color").opacity(index == 0 ? 1 : 0))
                .background(.blue.opacity(index == 0 ? 1 : 0))
                .clipShape(Capsule())
                .onTapGesture {
                    index = 0
                }
            
            Text("Filmo")
                .font(.system(size: 15))
                .foregroundColor(index == 1 ? .white : .red.opacity(0.85))
                .fontWeight(.bold)
                .padding(.vertical, 6)
                .padding(.horizontal, 20)
                .background(.blue.opacity(index == 1 ? 1 : 0))
                .clipShape(Capsule())
                .onTapGesture {
                    index = 1
                }
            
            Text("Actor")
                .font(.system(size: 15))
                .foregroundColor(index == 2 ? .white : .red.opacity(0.85))
                .fontWeight(.bold)
                .padding(.vertical, 6)
                .padding(.horizontal, 20)
                .background(.blue.opacity(index == 2 ? 1 : 0))
                .clipShape(Capsule())
                .onTapGesture {
                    index = 2
                }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 10)
    }
}
