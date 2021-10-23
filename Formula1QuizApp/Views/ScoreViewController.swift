//
//  ScoreViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/15/21.
//

import UIKit
import MaterialComponents

class ScoreViewController: UIViewController {
    
    var endScore: Int!
    var answeredCorretly: Int!

    //Outlets
    @IBOutlet var scoreTitleLabel: UILabel!
    @IBOutlet var amountOfQuestionsAnsweredLabel: UILabel!
    @IBOutlet var totalScoreLabel: UILabel!
    @IBOutlet var bacgroundImage: UIImageView!
    
    let exitButton: MDCButton = {
        let button = MDCButton()
        button.setBackgroundColor(.red)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.setTitle("Exit",
                        for: .normal)
        button.setTitleFont(UIFont(name: "Formula1 Display Regular",
                                   size: 20),
                            for: .normal)
        button.addTarget(self,
                         action: #selector(pressedExit),
                         for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bacgroundImage.layer.opacity = 0.3
        bacgroundImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(exitButton)
        
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
            bacgroundImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            exitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            exitButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 250),
            exitButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30),
            exitButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    @objc
    func pressedExit(_ sender: MDCButton) {
        let view = UIStoryboard(name: "Main",
                                bundle: nil)
        let returnView = view.instantiateViewController(withIdentifier: "CatergoryView")
        navigationController?.pushViewController(returnView,
                                                 animated: true)
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
