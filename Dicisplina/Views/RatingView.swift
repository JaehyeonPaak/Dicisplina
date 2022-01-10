//
//  RatingView.swift
//  Dicisplina
//
//  Created by United States on 12/23/21.
//

import SwiftUI

struct RatingView: View {
    
    @AppStorage("ratings") private var ratings = ""
    @State private var rating: Int = 0
    let exerciseIndex: Int
    
    let onColor = Color.red
    let offColor = Color.gray
    
    init(exerciseIndex: Int) {
        self.exerciseIndex = exerciseIndex
        let desiredLength = Exercise.exercises.count
        if ratings.count < desiredLength {
            ratings = ratings.padding(toLength: desiredLength, withPad: "0", startingAt: 0)
        }
    }
    
    var body: some View {
        HStack {
            ForEach(0..<Exercise.exercises.count) { index in
                Image(systemName: "flame")
                    .onAppear {
                        let character = ratings[ratings.index(ratings.startIndex, offsetBy: exerciseIndex)]
                        rating = character.wholeNumberValue ?? 0
                    }
                    .onTapGesture {
                        updateRating(index: index)
                    }
                    .foregroundColor(rating > index - 1 ? onColor : offColor)
                    .font(.system(size: 25))
            }
        }
    }
    
    func updateRating(index: Int) {
        rating = index
        let index = ratings.index(ratings.startIndex, offsetBy: exerciseIndex)
        ratings.replaceSubrange(index...index, with: String(rating))
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(exerciseIndex: 0)
            .previewLayout(.sizeThatFits)
    }
}
