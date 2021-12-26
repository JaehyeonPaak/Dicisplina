//
//  WelcomeView.swift
//  Dicisplina
//
//  Created by United States on 12/21/21.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            HeaderView(titleName: "Welcome")
            Spacer()
            Button {
            } label: {
                Text("History")
                    .font(.title3)
            }
            .padding(.bottom)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
