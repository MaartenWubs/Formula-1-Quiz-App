//
//  LeaderBoardViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/19/21.
//

import UIKit

class LeaderBoardViewController: UIViewController {

    public let publicTitle = "Leaderboard (Coming Soon)"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        let textLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Leaderboard"
            label.textColor = .white
            return label
        }()
        
        view.addSubview(textLabel)
        
        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            textLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor),
        ])
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
