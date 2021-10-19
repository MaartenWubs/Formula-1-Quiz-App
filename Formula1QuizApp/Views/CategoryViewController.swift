//
//  CategoryViewViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/15/21.
//

import UIKit

class CategoryViewController: UIViewController {

    //Outlets
    @IBOutlet var currentSeasonButton: UIButton!
    @IBOutlet var historyButton: UIButton!
    @IBOutlet var driversQuizButton: UIButton!
    
    let quiz = QuizModel()
    
    //Action
    @IBAction func QuizButtonPressed(_ sender: UIButton) {
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
            quizView.quiz = quiz.driversQuiz.questions
        }
        
        //present the new view
        navigationController?.pushViewController(quizView,
                                                 animated: true)
    }
    
    @IBAction func ProfilePressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main",
                                      bundle: nil)
        let profileView = storyboard.instantiateViewController(withIdentifier: "ProfilePage") as! ProfileViewController
        navigationController?.pushViewController(profileView,
                                                 animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentSeasonButton.tintColor = .red
        historyButton.tintColor = .red
        driversQuizButton.tintColor = .red
    }
    
    
    //This is to hide the back button in the view
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
