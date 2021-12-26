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
            VStack(alignment: .leading) {
                Text("Get fit")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                Text("with high intensity interval training")
            }
            Image("sprint.png")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 240, height: 240)
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
