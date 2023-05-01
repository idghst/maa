//
//  MainIntro.swift
//  maa
//
//  Created by idghst on 2023/04/30.
//

import SwiftUI

struct MainIntro: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text(verbatim: "\"Always holding our artists and \ncustomers at the highest regard, MAA \nstrives to be the best comprehensive \nentertainment company.\"\n\naudition@maa.co.kr")
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                    .textCase(.uppercase)
                
                Spacer()
            }
            Spacer()
        }
    }
}
