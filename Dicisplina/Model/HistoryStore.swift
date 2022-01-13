
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
    
    @Published var exerciseDays: [ExerciseDay] = []
    
    init() {}
    
    init(withChecking: Bool) throws {
        do {
            try load()
        } catch {
            throw error
        }
    }
    
    func addDoneExercise(_ exerciseName: String) {
        let today = Date()
        if let firstDate = exerciseDays.first?.date {
            if isSameDay(date1: today, date2: firstDate) {
                exerciseDays[0].exercises.append(exerciseName)
            }
        }
        else {
            exerciseDays.insert(ExerciseDay(date: today, exercises: [exerciseName]), at: 0)
        }
        print("History: ", exerciseDays)
        do {
            try save()
        } catch {
            fatalError(error.localizedDescription)
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
    
    enum FileError: Error {
        case loadFailure
        case saveFailure
        case urlFailure
    }
    
    func load() throws {
        throw FileError.loadFailure
    }
    
    func getURL() -> URL? {
        guard let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            return nil
        }
        return documentsURL.appendingPathComponent("history.plist")
    }
    
    func save() throws {
        guard let dataURL = getURL() else {
            throw FileError.urlFailure
        }
        var plishData: [[Any]] = []
        for exerciseDay in exerciseDays {
            plishData.append([exerciseDay.id, exerciseDay.date, exerciseDay.exercises])
        }
        do {
            let data = try PropertyListSerialization.data(fromPropertyList: plishData, format: .binary, options: .zero)
            try data.write(to: dataURL, options: .atomic)
        } catch {
            throw FileError.saveFailure
        }
    }
}
