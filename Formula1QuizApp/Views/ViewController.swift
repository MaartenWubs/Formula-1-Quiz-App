//
//  ViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/6/21.
//

import UIKit
import MaterialComponents

class QuizViewController: UIViewController {
    
    //MARK: Properties
    var questions = [Question]()
    var quiz: [Question]!
    var answeredQuestions = 0
    var answerdCorretly = 0
    var score = 0
    

    //MARK: Outlets
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var image: UIImageView!
    @IBOutlet var questionAmount: UILabel!
    @IBOutlet var backgroundImage: UIImageView!
    
    //MARK: Answer Buttons
    var answerButton1: MDCButton = {
        let button = MDCButton()
        return button
    }()
    var answerButton2: MDCButton = {
        let button = MDCButton()
        return button
    }()
    var answerButton3: MDCButton = {
        let button = MDCButton()
        return button
    }()
    var answerButton4: MDCButton = {
        let button = MDCButton()
        return button
    }()
    var quitButton: MDCButton = {
        let button = MDCButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Quit", for: .normal)
        button.setTitleFont(UIFont(name: "Formula1 Display Regular",
                                   size: 15),
                            for: .normal)
        button.setBackgroundColor(.black, for: .normal)
        button.addTarget(self, action: #selector(pressedQuit), for: .touchUpInside)
        
        return button
    }()
    
    //MARK: View Code
    override func viewDidLoad() {
        super.viewDidLoad()
        quiz.shuffle()
        questions.append(contentsOf: quiz.prefix(upTo: 20))
        createAnswerButtons()
        askQuestion()
        setFirstScene()
        
    }
    
    //removing the back button
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(true,
                                                          animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.navigationController?.setNavigationBarHidden(false,
                                                          animated: true)
    }
    

     
}

