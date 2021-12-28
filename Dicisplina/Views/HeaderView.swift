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
                ForEach(0..<Exercise.exercises.count) { index in
                    let fill = (selectedTab == index ? ".fill" : "")
                    Image(systemName: "\(index+1).circle\(fill)")
                        .font(.system(size: 25))
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
