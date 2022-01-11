//
//  DicisplinaApp.swift
//  Dicisplina
//
//  Created by United States on 12/21/21.
//

import SwiftUI

@main
struct DicisplinaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(HistoryStore())
                .onAppear {
                    print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))
                }
        }
    }
}
