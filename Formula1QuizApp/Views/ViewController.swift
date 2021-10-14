//
//  ViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/6/21.
//

import UIKit

class ViewController: UIViewController {
    var questions = [Question]()
    let currentSeason = CurrentSeasonQuestions()
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
        // Do any additional setup after loading the view.
        askQuestion()
    }
    
    func askQuestion() {
        questions.append(contentsOf: currentSeason.questions)
        //questions.shuffle()
        print(questions[2].ask)
        print(questions[2].answers[0].answer)
        print(questions[2].answers[1].answer)
        print(questions[2].answers[2].answer)
        print(questions[2].answers[3].answer)
        
        questionLabel.text = questions[answeredQuestions].ask
        
        answerButton1.setTitle(questions[answeredQuestions].answers[0].answer, for: .normal)
        answerButton2.setTitle(questions[answeredQuestions].answers[1].answer, for: .normal)
        answerButton3.setTitle(questions[answeredQuestions].answers[2].answer, for: .normal)
        answerButton4.setTitle(questions[answeredQuestions].answers[3].answer, for: .normal)
        
        image.image = UIImage(named: questions[answeredQuestions].image ?? "")
    }


}

