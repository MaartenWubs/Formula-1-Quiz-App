//
//  QuizButtonHandlers.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/20/21.
//

import Foundation
import UIKit
import MaterialComponents

extension QuizViewController {
    
    func createAnswerButtons() {
        let buttonsArray = [answerButton1, answerButton2, answerButton3, answerButton4]
        for i in 0..<buttonsArray.count {
            buttonsArray[i].setTitle(questions[answeredQuestions].answers[i].answer, for: .normal)
            buttonsArray[i].tag = i
        }
        for button in buttonsArray {
            button.setBackgroundColor(.red)
            button.rippleColor = .white
            button.enableRippleBehavior = true
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitleFont(UIFont(name: "Formula1 Display Regular",
                                       size: 15),
                                for: .normal)
            button.layer.cornerRadius = 10
            button.addTarget(self, action: #selector(buttonePressed), for: .touchUpInside)
            view.addSubview(button)
        }
        
        NSLayoutConstraint.activate([
            self.answerButton1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.answerButton1.topAnchor.constraint(equalTo: view.centerYAnchor,
                                                   constant: 20),
            self.answerButton1.widthAnchor.constraint(equalTo: view.widthAnchor,
                                                     constant: -30),
            self.answerButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.answerButton2.topAnchor.constraint(equalTo: self.answerButton1.bottomAnchor,
                                                   constant: 20),
            self.answerButton2.widthAnchor.constraint(equalTo: self.answerButton1.widthAnchor),
            self.answerButton3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.answerButton3.topAnchor.constraint(equalTo: self.answerButton2.bottomAnchor,
                                                   constant: 20),
            self.answerButton3.widthAnchor.constraint(equalTo: self.answerButton1.widthAnchor),
            self.answerButton4.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.answerButton4.topAnchor.constraint(equalTo: self.answerButton3.bottomAnchor,
                                                   constant: 20),
            self.answerButton4.widthAnchor.constraint(equalTo: self.answerButton1.widthAnchor)
        ])
    }
    
    @objc
    func buttonePressed(_ sender: MDCButton) {
        //Code logic to calculate score
        print(questions[answeredQuestions].answers[sender.tag].correctness)
        if questions[answeredQuestions].answers[sender.tag].correctness == true {
            score += 5
            answerdCorretly += 1
        }
        
        //Add one to the answered quiestions
        answeredQuestions += 1
        
        //Check if answeredQuestions is less then 20 to continue.
        if answeredQuestions < 20 {
            askQuestion()
        } else {
            endQuiz()
        }
    }
    
    @objc
    func askQuestion() {
        
        questionAmount.text = "Question \(answeredQuestions + 1) of \(questions.count)"
        
        questionLabel.text = questions[answeredQuestions].ask
        questionLabel.textColor = .white
        
        answerButton1.setTitle(questions[answeredQuestions].answers[0].answer, for: .normal)
        answerButton2.setTitle(questions[answeredQuestions].answers[1].answer, for: .normal)
        answerButton3.setTitle(questions[answeredQuestions].answers[2].answer, for: .normal)
        answerButton4.setTitle(questions[answeredQuestions].answers[3].answer, for: .normal)
        
        image.image = UIImage(named: questions[answeredQuestions].image ?? "")
    }
    
    func endQuiz() {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main",
                                                    bundle: nil)
        
        let scoreView = storyboard.instantiateViewController(withIdentifier: "QuizEnd") as! ScoreViewController
        scoreView.endScore = score
        scoreView.answeredCorretly = answerdCorretly
        
        navigationController?.pushViewController(scoreView,
                                                 animated: true)
    }
    
    @objc
    func pressedQuit(_ sender: MDCButton) {
        //reset scores
        answeredQuestions = 0
        score = 0
        //return to the catagory view
        let storyboard: UIStoryboard = UIStoryboard(name: "Main",
                                                    bundle: nil)
        
        let categoryView = storyboard.instantiateViewController(withIdentifier: "CatergoryView") as! CategoryViewController
        
        navigationController?.pushViewController(categoryView,
                                                 animated: true)
    }
    
    func setFirstScene() {
        
        answeredQuestions = 0
        score = 0
        
        view.backgroundColor = .black
        backgroundImage.layer.opacity = 0.3
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(quitButton)
        
        NSLayoutConstraint.activate([
            backgroundImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backgroundImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            quitButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 55),
            quitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        
    }
}
