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
    @IBOutlet var answerButton1: MDCButton!
    @IBOutlet var answerButton2: MDCButton!
    @IBOutlet var answerButton3: MDCButton!
    @IBOutlet var answerButton4: MDCButton!
    @IBOutlet var image: UIImageView!
    @IBOutlet var quitButton: UIButton!
    @IBOutlet var questionAmount: UILabel!
    
    //MARK: Action
    //Answer button pressed
    @IBAction func buttonePressed(_ sender: UIButton) {
        //Code logic to calculate score
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
    
    //Quit button pressed
    @IBAction func PressedQuit(_ sender: UIButton) {
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
    
    private func endQuiz() {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main",
                                                    bundle: nil)
        
        let scoreView = storyboard.instantiateViewController(withIdentifier: "QuizEnd") as! ScoreViewController
        scoreView.endScore = score
        scoreView.answeredCorretly = answerdCorretly
        
        navigationController?.pushViewController(scoreView,
                                                 animated: true)
    }
    
    //MARK: View Code
    override func viewDidLoad() {
        answeredQuestions = 0
        score = 0
        super.viewDidLoad()
        view.backgroundColor = .black
        
        quiz.shuffle()
        questions.append(contentsOf: quiz.prefix(upTo: 20))

        answerButton1.tintColor = .red
        answerButton2.tintColor = .red
        answerButton3.tintColor = .red
        answerButton4.tintColor = .red
        
        askQuestion()
        
    }
    
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

