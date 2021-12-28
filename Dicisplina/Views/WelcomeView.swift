//
//  WelcomeView.swift
//  Dicisplina
//
//  Created by United States on 12/21/21.
//

import SwiftUI

struct WelcomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        VStack {
            HeaderView(titleName: "Welcome", selectedTab: $selectedTab)
            Spacer()
            VStack(alignment: .leading) {
                Text("Get fit")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                Text("with high intensity interval training")
            }
            .padding(.bottom)
            Image("sprint")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 240, height: 240)
                .clipShape(Circle())
            Spacer()
            Button {
                selectedTab = 0
            } label: {
                HStack {
                    Text("Get Started")
                    Image(systemName: "arrow.right.circle")
                }
                .font(.system(size: 25))
                .padding()
                .background(RoundedRectangle(cornerRadius: 25).stroke(.gray, lineWidth: 2))
            }
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
        WelcomeView(selectedTab: .constant(9))
    }
}
