//
//  SuccessView.swift
//  Dicisplina
//
//  Created by United States on 12/27/21.
//

import SwiftUI

struct SuccessView: View {
    var body: some View {
        VStack {
            Image(systemName: "hand.raised.fill")
                .padding(.bottom, -10.0)
                .font(.system(size: 60))
                .foregroundColor(.green)
            Text("High Five!")
                .font(.system(size: 35))
                .fontWeight(.bold)
                .padding(.bottom)
            VStack {
                Text("Good job completing all three exercises!")
                Text("Remember tomorrow's another day.")
                Text("So eat well and get some rest.")
            }
            .foregroundColor(.gray)
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
