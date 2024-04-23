//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Sergei Volotka on 02.04.2024.
//

import UIKit

final class AlertPresenter: AlertPresenterDelegate {
    
    weak var delegate: UIViewController?
    
    init(delegate: UIViewController) {
        self.delegate = delegate
    }
    
    func show(quiz model: AlertModel) {
        
        let alert = UIAlertController(
            title: model.title,
            message: model.message,
            preferredStyle: .alert
        )
        
       // alert.view.accessibilityIdentifier = "Alert"
        //alert.view.accessibilityIdentifier = "Game results"
        let action = UIAlertAction(title: model.buttonText, style: .default) { _ in
            model.completion()
        }
        alert.addAction(action)
        delegate?.present(alert, animated: true, completion: nil)
    }
}
