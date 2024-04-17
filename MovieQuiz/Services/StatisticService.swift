//
//  StatisticService.swift
//  MovieQuiz
//
//  Created by Sergei Volotka on 09.04.2024.
//

import Foundation

protocol StatisticService {
    var totalAccuracy: Double { get }
    var gamesCount: Int { get }
    var bestGame: GameRecord { get }
    var total: Int { get }
    var correct: Int { get }

    func store(correct count: Int, total amount: Int)
}
