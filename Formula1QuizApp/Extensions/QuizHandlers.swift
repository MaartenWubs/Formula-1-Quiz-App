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
    
    /// This method creates al the answer buttons and will set al the properties,
    /// including the layout constraints to correclty position the buttons on the screen.
    func createAnswerButtons() {
        let buttonsArray = [answerButton1, answerButton2, answerButton3, answerButton4]
        for i in 0..<buttonsArray.count {
            buttonsArray[i].setTitle(questions[answeredQuestions].answers[i].answer,
                                     for: .normal)
            buttonsArray[i].setTitleFont(UIFont(name: "Formula1 Display Regular",
                                                size: questions[answeredQuestions].answers[i].textSize),
                                         for: .normal)
            buttonsArray[i].tag = i
            
        }
        for button in buttonsArray {
            button.setBackgroundColor(.red)
            button.rippleColor = .white
            button.enableRippleBehavior = true
            button.translatesAutoresizingMaskIntoConstraints = false
            
            button.titleLabel?.lineBreakStrategy = .standard
            button.layer.cornerRadius = 10
            button.addTarget(self,
                             action: #selector(buttonePressed),
                             for: .touchUpInside)
            view.addSubview(button)
        }
        
        let buttonHeight: CGFloat = 60
        
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
            self.answerButton4.widthAnchor.constraint(equalTo: self.answerButton1.widthAnchor),
            self.answerButton1.heightAnchor.constraint(equalToConstant: buttonHeight),
            self.answerButton2.heightAnchor.constraint(equalToConstant: buttonHeight),
            self.answerButton3.heightAnchor.constraint(equalToConstant: buttonHeight),
            self.answerButton4.heightAnchor.constraint(equalToConstant: buttonHeight)
        ])
    }
    
    @objc
    /// This function will get called when ever one of the answer buttons is pressed. This
    /// code will check if the answer that is pressed is correct by the assinged tag from each
    /// button. It will then chagne the score acoordingly. It also adds one to the amount of questions
    /// answered property. As long as the property has a value below 20 it will fetch the next question
    /// else it will call the endQuiz method
    ///
    /// - Parameter sender: The button that is pressed.
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
    /// This method fetches the next questions from the array of questions that is created
    /// when the quiz is started.
    func askQuestion() {
        
        let buttonsArray = [answerButton1, answerButton2, answerButton3, answerButton4]
        
        questionAmount.text = "Question \(answeredQuestions + 1) of \(questions.count)"
        
        questionLabel.text = questions[answeredQuestions].ask
        questionLabel.textColor = .white
        
        for i in 0..<buttonsArray.count {
            buttonsArray[i].setTitle(questions[answeredQuestions].answers[i].answer,
                                     for: .normal)
            buttonsArray[i].setTitleFont(UIFont(name: "Formula1 Display Regular",
                                                size: questions[answeredQuestions].answers[i].textSize),
                                         for: .normal)
        }
        
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
    /// This method is called when the player presses that quit button. It will rest all the scores
    /// and show the category view again.
    /// - Parameter sender: The button that is pressed
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
            quitButton.topAnchor.constraint(equalTo: view.topAnchor,
                                            constant: 55),
            quitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                 constant: -20)
        ])
        
        
    }
}
