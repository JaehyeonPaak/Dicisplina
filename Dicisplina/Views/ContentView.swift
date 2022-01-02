//
//  ContentView.swift
//  Dicisplina
//
//  Created by United States on 12/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab: Int = 9
    @State private var showHistory = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            WelcomeView(selectedTab: $selectedTab, showHistory: $showHistory)
                .tag(9)
            ForEach (0..<Exercise.exercises.count) { index in
                ExerciseView(index: index, selectedTab: $selectedTab, showHistory: $showHistory)
                    .tag(index)
            }
        }
        .environmentObject(HistoryStore())
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
