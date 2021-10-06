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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questions.append(contentsOf: currentSeason.questions)
        print(questions[3].ask)
        print(questions[3].answers[0].answer)
        print(questions[3].answers[1].answer)
        print(questions[3].answers[2].answer)
        print(questions[3].answers[3].answer)
    }


}

