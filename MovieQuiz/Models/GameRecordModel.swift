//
//  GameRecordModel.swift
//  MovieQuiz
//
//  Created by Sergei Volotka on 09.04.2024.
//

import Foundation

struct GameRecord: Codable {
    let correct: Int
    let total: Int
    let date: Date
    
    func isBetterThan(_ another: GameRecord) -> Bool {
        correct > another.correct
    }
}
