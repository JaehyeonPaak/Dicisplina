//
//  Exercise.swift
//  Dicisplina
//
//  Created by United States on 12/27/21.
//

import Foundation

struct Exercise {
    let videoName: String
    let exerciseName: String
    
    enum ExerciseEnum: String {
        case jumpingJacks = "Jumping Jacks"
        case squat = "Squat"
        case mountainClimber = "Mountain Climber"
        case bicycleCrunch = "Bicycle Crunch"
        case superman = "Superman"
    }
}

extension Exercise {
    static let exercises = [
        Exercise(videoName: "Jumping_Jacks", exerciseName: ExerciseEnum.jumpingJacks.rawValue),
        Exercise(videoName: "Squat", exerciseName: ExerciseEnum.squat.rawValue),
        Exercise(videoName: "Mountain_Climber", exerciseName: ExerciseEnum.mountainClimber.rawValue),
        Exercise(videoName: "Bicycle_Crunch", exerciseName: ExerciseEnum.bicycleCrunch.rawValue),
        Exercise(videoName: "Superman", exerciseName: ExerciseEnum.superman.rawValue)
    ]
}
