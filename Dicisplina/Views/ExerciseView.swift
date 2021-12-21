//
//  ExerciseView.swift
//  Dicisplina
//
//  Created by United States on 12/21/21.
//

import SwiftUI
import AVKit

let exerciseNames = ["Squats", "Push Up", "Forward Lunge"]
let videoNames = ["squats", "push_up", "forward_lunge"]

struct ExerciseView: View {
    
    let index: Int
    
    var body: some View {
        VStack {
            HeaderView(index: index)
            if let url = Bundle.main.url(forResource: videoNames[index], withExtension: ".mp4") {
                VideoPlayer(player: AVPlayer(url: url))
            }
            else {
                Text("Couldn't find \(videoNames[index]).mp4")
                    .foregroundColor(.red)
            }
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
