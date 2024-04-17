//
//  AlertPresenterDelegate.swift
//  MovieQuiz
//
//  Created by Sergei Volotka on 03.04.2024.
//

import Foundation
protocol AlertPresenterDelegate: AnyObject {
    func show(quiz model: AlertModel) 
}
