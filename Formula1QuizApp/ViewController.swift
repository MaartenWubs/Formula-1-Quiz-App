//
//  ViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/6/21.
//

import UIKit

class ViewController: UIViewController {
    
    let currentSeason = CurrentSeasonQuestions()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(currentSeason.questions[0])
    }


}

