//
//  StatisticServiceImplementation.swift
//  MovieQuiz
//
//  Created by Sergei Volotka on 09.04.2024.
//

import Foundation

final class StatisticServiceImplementation: StatisticService {
    
    // MARK: - Public Properties
    var correct: Int {
        get {
            return userDefaults.integer(forKey: Keys.correct.rawValue)
        }
        set {
            let value = self.correct + newValue
            userDefaults.set(value, forKey: Keys.correct.rawValue)
        }
    }
    
    var total: Int {
        get {
            return userDefaults.integer(forKey: Keys.total.rawValue)
        }
        set {
            let value = self.total + newValue
            userDefaults.set(value, forKey: Keys.total.rawValue)
        }
    }
    
    var gamesCount: Int {
        get {
            return userDefaults.integer(forKey: Keys.gamesCount.rawValue)
        }
        set {
            userDefaults.set(newValue, forKey: Keys.gamesCount.rawValue)
        }
    }
    
    var bestGame: GameRecord {
        get {
            guard let data = userDefaults.data(forKey: Keys.bestGame.rawValue),
                  let record = try? JSONDecoder().decode(GameRecord.self, from: data) else {
                return .init(correct: 0, total: 0, date: Date())
            }
            return record
        }
        set {
            guard let data = try? JSONEncoder().encode(newValue) else {
                print("Невозможно сохранить результат")
                return
            }
            userDefaults.set(data, forKey: Keys.bestGame.rawValue)
        }
    }
    
    var totalAccuracy: Double  {
        get {
            if total != 0 {
                return Double(correct) / Double(total) * 100
            }
            return Double(0)
        }
    }
    
    // MARK: - Private Properties
    private enum Keys: String {
        case correct, total, bestGame, gamesCount
    }
    
    private let userDefaults = UserDefaults.standard
    
    // MARK: - Public Methods
    func store(correct count: Int, total amount: Int) {
        let newGame = GameRecord(
            correct: count,
            total: amount,
            date: Date()
        )
        gamesCount += 1
        total = amount
        correct = count
        
        if !bestGame.isBetterThan(newGame) {
            self.bestGame = newGame
        }
    }
}
