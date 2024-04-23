//
//  QuestionFactoryProtocol.swift
//  MovieQuiz
//
//  Created by Sergei Volotka on 02.04.2024.
//

import Foundation

protocol QuestionFactoryProtocol {
    var delegate: QuestionFactoryDelegate? { get set }
    func requestNextQuestion()
    func loadData()
}
