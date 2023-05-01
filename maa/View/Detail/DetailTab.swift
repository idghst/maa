//
//  DetailTab.swift
//  maa
//
//  Created by idghst on 2023/04/30.
//

import SwiftUI

struct DetailTab: View {
    
    @Binding var index: Int
    
    var body: some View {
        // 탭 아이콘
        HStack {
            Text("Photo")
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
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 10)
    }
}
