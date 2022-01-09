//
//  RatingView.swift
//  Dicisplina
//
//  Created by United States on 12/23/21.
//

import SwiftUI

struct RatingView: View {
    
    @AppStorage("ratings") private var ratings = "20000"
    @State private var rating: Int = 0
    let exerciseIndex: Int
    
    let onColor = Color.red
    let offColor = Color.gray
    
    var body: some View {
        HStack {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { index in
                Image(systemName: "flame")
                    .onAppear {
                        let character = ratings[ratings.index(ratings.startIndex, offsetBy: exerciseIndex)]
                        rating = character.wholeNumberValue ?? 0
                    }
                    .onTapGesture {
                        rating = index + 1
                    }
                    .foregroundColor(rating > index ? onColor : offColor)
                    .font(.system(size: 25))
            }
        }
    }
    
    func updateRating() {
        
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(exerciseIndex: 0)
            .previewLayout(.sizeThatFits)
    }
}
