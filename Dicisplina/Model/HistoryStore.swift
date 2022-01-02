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

class HistoryStore: ObservableObject {
    @Published var exerciseDays: [ExerciseDay] = [
        ExerciseDay(date: Date().addingTimeInterval(-86400), exercises: [Exercise.exercises[0].exerciseName,
                    Exercise.exercises[1].exerciseName,
                    Exercise.exercises[2].exerciseName]),
        ExerciseDay(date: Date().addingTimeInterval(-86400*2), exercises: [Exercise.exercises[1].exerciseName,
                    Exercise.exercises[0].exerciseName])
    ]
    
    func addDoneExercise(_ exerciseName: String) {
        let today = Date()
        if isSameDay(date1: today, date2: exerciseDays[0].date) {
            exerciseDays[0].exercises.append(exerciseName)
        }
        else {
            exerciseDays.insert(ExerciseDay(date: today, exercises: [exerciseName]), at: 0)
        }
    }
    
    func isSameDay(date1: Date, date2: Date) -> Bool {
        let diff = Calendar.current.dateComponents([.day], from: date1, to: date2)
        if diff.day == 0 {
            return true
        } else {
            return false
        }
    }
}

