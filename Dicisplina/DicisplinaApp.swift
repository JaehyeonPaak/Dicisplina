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
    
    init() {
        let historyStore: HistoryStore
        do {
            historyStore = try HistoryStore(withChecking: true)
        }
        catch {
            print("Couldn't load history data.")
            historyStore = HistoryStore()
        }
        _historyStore = StateObject(wrappedValue: historyStore)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(historyStore)
                .onAppear {
                    print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))
                }
        }
    }
}
