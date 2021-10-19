//
//  ScoreViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/15/21.
//

import UIKit

class ScoreViewController: UIViewController {
    
    var endScore: Int!
    var answeredCorretly: Int!

    //Outlets
    @IBOutlet var scoreTitleLabel: UILabel!
    @IBOutlet var amountOfQuestionsAnsweredLabel: UILabel!
    @IBOutlet var totalScoreLabel: UILabel!
    @IBOutlet var exitButton: UIButton!
    @IBOutlet var bacgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bacgroundImage.layer.opacity = 0.3
        bacgroundImage.translatesAutoresizingMaskIntoConstraints = false
        
        exitButton.tintColor = .red
        
        if endScore > 70 {
            scoreTitleLabel.text = "Congratulations"
        } else if endScore > 50 {
            scoreTitleLabel.text = "Good Job"
        } else {
            scoreTitleLabel.text = "Better Luck Next Time"
        }
        
        amountOfQuestionsAnsweredLabel.text = "You answered \(answeredCorretly ?? 0) out of 20 questions correctly"
        totalScoreLabel.text = "Your score is \(endScore ?? 0)%"
        
        NSLayoutConstraint.activate([
            bacgroundImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bacgroundImage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @IBAction func pressedExit(_ sender: UIButton) {
        let view = UIStoryboard(name: "Main", bundle: nil)
        let returnView = view.instantiateViewController(withIdentifier: "CatergoryView")
        navigationController?.pushViewController(returnView, animated: true)
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
