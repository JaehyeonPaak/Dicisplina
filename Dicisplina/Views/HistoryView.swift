//
//  HistoryView.swift
//  Dicisplina
//
//  Created by United States on 12/24/21.
//

import SwiftUI

let today = Date()
let yesterday = Date().addingTimeInterval(-86400)

let exercise1 = ["Squat", "Push Up", "Forward Lunge"]
let exercise2 = ["Push Up"]

struct HistoryView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button {
            } label: {
                Image(systemName: "xmark.circle")
                    .padding(.trailing)
                    .font(.system(size: 25))
                    .foregroundColor(.gray)
            }
            VStack {
                Text("History")
                    .font(.title)
                    .fontWeight(.bold)
                Form {
                    Section {
                    } header: {
                        Text(today.formatted(date: .abbreviated, time: .omitted ))
                            .font(.headline)
                    }
                    ForEach (exercise1, id: \.self) { exercise in
                        Text(exercise)
                    }
                    Section {
                    } header: {
                        Text(yesterday.formatted(date: .abbreviated, time: .omitted ))
                            .font(.headline)
                    }
                    ForEach (exercise1, id: \.self) { exercise in
                        Text(exercise)
                    }
                }
            }
        }

    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
