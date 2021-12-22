//
//  HeaderView.swift
//  Dicisplina
//
//  Created by United States on 12/21/21.
//

import SwiftUI

struct HeaderView: View {
    
    let index: Int
    
    var body: some View {
        VStack {
            Text(exerciseNames[index])
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            .padding(.bottom)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(index: 0)
    }
}
