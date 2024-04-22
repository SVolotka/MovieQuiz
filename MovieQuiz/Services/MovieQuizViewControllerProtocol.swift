//
//  MovieQuizViewControllerProtocol.swift
//  MovieQuiz
//
//  Created by Sergei Volotka on 22.04.2024.
//

import Foundation

protocol MovieQuizViewControllerProtocol: AnyObject {
    func show(quiz step: QuizStepViewModel)
    func show(quiz result: QuizResultsViewModel)
    
    func highlightImageBorder(isCorrectAnswer: Bool)
    func switchButtons(isEnable: Bool)
    func showLoadingIndicator()
    func hideLoadingIndicator()

    func showNetworkError(message: String)
}
