//
//  RatingView.swift
//  Dicisplina
//
//  Created by United States on 12/23/21.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int
    
    let onColor = Color.red
    let offColor = Color.gray
    
    var body: some View {
        HStack {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { index in
                Image(systemName: "flame")
                    .onTapGesture {
                        rating = index + 1
                    }
                    .foregroundColor(rating > index ? onColor : offColor)
                    .font(.system(size: 25))
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(0))
            .previewLayout(.sizeThatFits)
    }
}
