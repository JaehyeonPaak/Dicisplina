//
//  HeaderView.swift
//  Dicisplina
//
//  Created by United States on 12/21/21.
//

import SwiftUI

struct HeaderView: View {
    
    let titleName: String
    
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack {
            Text(titleName)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)
            HStack {
                ForEach(1..<Exercise.exercises.count+1) { index in
                    let fill = (selectedTab == index-1 ? ".fill" : "")
                    Button {
                        selectedTab = index - 1
                    } label: {
                        Image(systemName: "\(index).circle\(fill)")
                            .font(.system(size: 25))
                    }

                }
            }
            .padding(.bottom)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(titleName: "Welcome", selectedTab: .constant(0))
    }
}
