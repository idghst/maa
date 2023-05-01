//
//  MainFilmo.swift
//  maa
//
//  Created by idghst on 2023/04/30.
//

import SwiftUI

struct FilmoView: View {
    
    @Binding var filmo: [Filmo]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            Spacer()
            VStack(alignment: .leading) {
                HStack { Spacer() }
                
                ForEach(filmo) { flm in
                    if flm.bornDate != "" {
                        VStack(alignment: .leading) {
                            Spacer().frame(height: 10)
                            Text("\(flm.bornDate)")
                                .fontWeight(.bold)
                            Spacer().frame(height: 30)
                        }
                    }
                    else {
                        VStack {
                            HStack(alignment: .top) {
                                Text("\(flm.year)")
                                    .fontWeight(.bold)
                                Spacer().frame(width: 20)
                                Text("\(flm.detail)")
                            }
                            Spacer().frame(height: 20)
                        }
                    }
                }
            }
            .padding(.horizontal, 30)
            Spacer()
        }
    }
}
