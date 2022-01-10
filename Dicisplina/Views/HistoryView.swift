//
//  HistoryView.swift
//  Dicisplina
//
//  Created by United States on 12/24/21.
//

import SwiftUI

struct HistoryView: View {
    
    @Binding var showHistory: Bool
    @EnvironmentObject var history: HistoryStore
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button {
                showHistory.toggle()
            } label: {
                Image(systemName: "xmark.circle")
                    .padding(.trailing)
                    .font(.system(size: 25))
                    .foregroundColor(.gray)
            }
            .padding(.top)
            VStack {
                Text("History")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                Form {
                    ForEach(history.exerciseDays) { day in
                        Section {
                            ForEach(day.exercises, id: \.self) { exercise in
                                Text(exercise)
                            }
                        } header: {
                            Text(day.date.formatted(date: .abbreviated, time: .omitted))
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                        }
                    }
                }
            }
        }

    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(showHistory: .constant(true))
            .environmentObject(HistoryStore())
    }
}
