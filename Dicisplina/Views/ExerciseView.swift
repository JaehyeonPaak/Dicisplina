//
//  ExerciseView.swift
//  Dicisplina
//
//  Created by United States on 12/21/21.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    
    let index: Int
    
    @Binding var selectedTab: Int
    
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    
    @Binding var showHistory: Bool
    @State private var showSuccess = false
    
    @State private var showTimer = false
    @State private var timerDone = false
    
    @EnvironmentObject var history: HistoryStore
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                HeaderView(titleName: Exercise.exercises[index].exerciseName, selectedTab: $selectedTab)
                    .padding(.bottom)
                if let url = Bundle.main.url(forResource: Exercise.exercises[index].videoName, withExtension: ".mp4") {
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geo.size.height*0.45)
                }
                else {
                    Text("Couldn't find \(Exercise.exercises[index].videoName).mp4")
                        .frame(width: geo.size.width*1, height: geo.size.height*0.45)
                        .foregroundColor(.red)
                }
                
                HStack(spacing: 80) {
                    
                    Button {
                        showTimer = true
                    } label: {
                        Text("Start")
                    }
                    
                    Button {
                        if lastExercise {
                            showSuccess.toggle()
                            showTimer = false
                        }
                        else {
                            selectedTab += 1
                        }
                        showTimer = false
                        timerDone.toggle()
                        history.addDoneExercise(Exercise.exercises[index].exerciseName)
                    } label: {
                        Text("Done")
                    }
                    .disabled(!timerDone)
                    .sheet(isPresented: $showSuccess) {
                        SuccessView(showSuccess: $showSuccess ,selectedTab: $selectedTab, showTimer: $showTimer)
                    }
                }
                .font(.largeTitle)
                .padding(.bottom)
                
                if showTimer {
                    TimerView(timerDone: $timerDone)
                }
                Spacer()
                RatingView(exerciseIndex: index)
                    .padding(.bottom)
                
                Button {
                    showHistory.toggle()
                } label: {
                    Text("History")
                        .font(.title3)
                }
                .sheet(isPresented: $showHistory, content: {
                    HistoryView(showHistory: $showHistory)
                })
                .padding(.bottom)
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0, selectedTab: .constant(0), showHistory: .constant(false))
            .environmentObject(HistoryStore())
    }
}
