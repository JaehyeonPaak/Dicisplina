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
        case squat = "Squat"
        case pushUp = "Push Up"
        case forwardLunge = "Forward Lunge"
    }
}

extension Exercise {
    static let exercises = [
        Exercise(videoName: "squat", exerciseName: ExerciseEnum.squat.rawValue),
        Exercise(videoName: "push_up", exerciseName: ExerciseEnum.pushUp.rawValue),
        Exercise(videoName: "forward_lunge", exerciseName: ExerciseEnum.forwardLunge.rawValue)
    ]
}
