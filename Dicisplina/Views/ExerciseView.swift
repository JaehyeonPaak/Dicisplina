//
//  ExerciseView.swift
//  Dicisplina
//
//  Created by United States on 12/21/21.
//

import SwiftUI
import AVKit

let titleName = ["Squat", "Push Up", "Forward Lunge"]
let videoNames = ["squat", "push_up", "forward_lunge"]

struct ExerciseView: View {
    
    let index: Int
    let interval: TimeInterval = 30
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                HeaderView(titleName: titleName[index])
                    .padding(.top)
                if let url = Bundle.main.url(forResource: videoNames[index], withExtension: ".mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geo.size.height*0.45)
                }
                else {
                    Text("Couldn't find \(videoNames[index]).mp4")
                        .frame(height: geo.size.height*0.45)
                        .foregroundColor(.red)
                }
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.largeTitle)
                    .padding(.vertical)
                Button {
                } label: {
                    Text("Start/Done")
                        .font(.title2)
                }
                .padding(.bottom)
                RatingView()
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
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}
