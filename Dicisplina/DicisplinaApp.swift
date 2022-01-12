//
//  DicisplinaApp.swift
//  Dicisplina
//
//  Created by United States on 12/21/21.
//

import SwiftUI

@main
struct DicisplinaApp: App {
    
    @StateObject private var historyStore: HistoryStore
    @State private var showAlert = false
    
    init() {
        let historyStore: HistoryStore
        do {
            historyStore = try HistoryStore(withChecking: true)
        }
        catch {
            print("Couldn't load history data.")
            historyStore = HistoryStore()
            showAlert = true
        }
        _historyStore = StateObject(wrappedValue: historyStore)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("History"), message: Text("Cannot load past history\n Email support:\n wogus392@gmail.com"))
                }
                .environmentObject(historyStore)
                .onAppear {
                    print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))
                }
        }
    }
}
