//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by Sergei Volotka on 02.04.2024.
//

import Foundation

protocol QuestionFactoryDelegate: AnyObject {
    func didReceiveNextQuestion(question: QuizQuestion?)
}
