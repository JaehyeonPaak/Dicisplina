//
//  SuccessView.swift
//  Dicisplina
//
//  Created by United States on 12/27/21.
//

import SwiftUI

struct SuccessView: View {
    
    @Binding var showSuccess: Bool
    @Binding var selectedTab: Int
    @Binding var showTimer: Bool
    @Binding var timerDone: Bool
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "hand.raised.fill")
                .padding(.bottom, -10.0)
                .font(.system(size: 60))
                .foregroundColor(.green)
            Text("High Five!")
                .font(.system(size: 35))
                .fontWeight(.bold)
                .padding(.bottom)
            VStack {
                Text("Good job completing the exercises!")
                Text("Remember tomorrow's another day.")
                Text("So eat well and get some rest.")
            }
            .font(.system(size: 20))
            .foregroundColor(.gray)
            Spacer()
            Button {
                showSuccess = false
                selectedTab = 9
                showTimer = false
                timerDone = false
            } label: {
                Text("Continue")
                    .font(.system(size: 25))
            }
            .padding(.bottom)

        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(showSuccess: .constant(true) ,selectedTab: .constant(0), showTimer: .constant(false), timerDone: .constant(false))
    }
}
