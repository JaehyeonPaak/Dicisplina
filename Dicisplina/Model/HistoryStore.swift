//
//  HistoryStore.swift
//  Dicisplina
//
//  Created by United States on 12/27/21.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}

struct HistoryStore {
    let exerciseDays: [ExerciseDay] = [
        ExerciseDay(date: Date(), exercises: [Exercise.exercises[0].exerciseName,
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[2].exerciseName]),
        ExerciseDay(date: Date().addingTimeInterval(-86400), exercises: [Exercise.exercises[1].exerciseName,
                    Exercise.exercises[0].exerciseName])
    ]
}
