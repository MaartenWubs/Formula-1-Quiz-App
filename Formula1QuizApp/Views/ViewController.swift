//
//  ViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/6/21.
//

import UIKit

class QuizViewController: UIViewController {
    var questions = [Question]()
    var currentSeason = CurrentSeasonQuestions()
    var answeredQuestions = 0
    var score = 0

    //Outlets
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerButton1: UIButton!
    @IBOutlet var answerButton2: UIButton!
    @IBOutlet var answerButton3: UIButton!
    @IBOutlet var answerButton4: UIButton!
    @IBOutlet var image: UIImageView!
    
    //Action
    @IBAction func buttonePressed(_ sender: UIButton) {
        answeredQuestions += 1
        askQuestion()
        print("Pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        // Do any additional setup after loading the view.
        askQuestion()
    }
    
    func askQuestion() {
        questions.append(contentsOf: currentSeason.questions)
        questions.shuffle()
        
        questionLabel.text = questions[answeredQuestions].ask
        questionLabel.textColor = .white
        
        answerButton1.tintColor = .red
        answerButton2.tintColor = .red
        answerButton3.tintColor = .red
        answerButton4.tintColor = .red

        answerButton1.setTitle(questions[answeredQuestions].answers[0].answer, for: .normal)
        answerButton2.setTitle(questions[answeredQuestions].answers[1].answer, for: .normal)
        answerButton3.setTitle(questions[answeredQuestions].answers[2].answer, for: .normal)
        answerButton4.setTitle(questions[answeredQuestions].answers[3].answer, for: .normal)
        
        image.image = UIImage(named: questions[answeredQuestions].image ?? "")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
}

