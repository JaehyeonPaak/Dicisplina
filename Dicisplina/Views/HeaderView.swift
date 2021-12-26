//
//  HeaderView.swift
//  Dicisplina
//
//  Created by United States on 12/21/21.
//

import SwiftUI

struct HeaderView: View {
    
    let titleName: String
    
    var body: some View {
        VStack {
            Text(titleName)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)
            HStack {
                Image(systemName: "hand.wave")
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .padding(.bottom)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(titleName: "Welcome")
    }
}
