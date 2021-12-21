//
//  ExerciseView.swift
//  Dicisplina
//
//  Created by United States on 12/21/21.
//

import SwiftUI
import AVKit

let exerciseNames = ["Forward Lunge", "Reverse Lunge", "Forearm Plank", "Assisted Pull Up"]
let videoAddress = ["https://www.youtube.com/watch?v=mUf28ZDa5tg", "https://www.youtube.com/watch?v=tpVhJNQURk4", "https://www.youtube.com/watch?v=bTZmnvtLLFY", "https://www.youtube.com/watch?v=vqqTR2H8DnA"]

struct ExerciseView: View {
    
    let index: Int
    
    var body: some View {
        VStack {
            HeaderView(index: index)
            VideoPlayer(player: AVPlayer(url: URL(string: videoAddress[index])!))
            Text("Timer")
            Text("Start/Done Button")
            Text("Rating")
            Text("History Button")
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}
