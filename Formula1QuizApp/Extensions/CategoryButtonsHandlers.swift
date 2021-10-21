//
//  CategoryButtonsView.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/20/21.
//

import Foundation
import UIKit
import MaterialComponents

extension CategoryViewController {
    
        
    public func createButtons() {
        let arrayOfButtons = [self.currentSeasonButton, self.historyQuizButton, self.driverQuizButton]
        
        for button in arrayOfButtons {
            button.setBackgroundColor(.red)
            button.rippleColor = .white
            button.enableRippleBehavior = true
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitleFont(UIFont(name: "Formula1 Display Regular",
                                       size: 20),
                                for: .normal)
            
            button.layer.cornerRadius = 10
            button.addTarget(self, action: #selector(quizButtonPressed), for: .touchUpInside)
            view.addSubview(button)
        }
        
        NSLayoutConstraint.activate([
            self.currentSeasonButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.currentSeasonButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            self.currentSeasonButton.widthAnchor.constraint(equalTo: view.widthAnchor,
                                                           constant: -20),
            self.historyQuizButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.historyQuizButton.topAnchor.constraint(equalTo: self.currentSeasonButton.bottomAnchor,
                                                        constant: 20),
            self.historyQuizButton.widthAnchor.constraint(equalTo: self.currentSeasonButton.widthAnchor),
            self.driverQuizButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.driverQuizButton.topAnchor.constraint(equalTo: self.historyQuizButton.bottomAnchor,
                                                      constant: 20),
            self.driverQuizButton.widthAnchor.constraint(equalTo: self.currentSeasonButton.widthAnchor)
        ])
        
    }
    
    @objc
    func quizButtonPressed(_ sender: MDCButton) {
        print("pressed") //DEBUG purposes
        
        //Search the main storyboard file
        let storyboard: UIStoryboard = UIStoryboard(name: "Main",
                                                    bundle: nil)
        //Search the view controller with "QuizView" as ID
        let quizView = storyboard.instantiateViewController(withIdentifier: "QuizView") as! QuizViewController
        
        //Check which button is pressed and load the correct array of questions
        if sender.tag == 0 {
            quizView.quiz = quiz.currentSeasonQuiz.questions
        } else if sender.tag == 1 {
            quizView.quiz = quiz.historyQuiz.questions
        } else if sender.tag == 2 {
            //quizView.quiz = quiz.driversQuiz.questions
        }
        
        //present the new view
        navigationController?.pushViewController(quizView,
                                                 animated: true)
    }
}
