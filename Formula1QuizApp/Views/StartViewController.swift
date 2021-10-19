//
//  StartViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/15/21.
//

import UIKit
import MaterialComponents

class StartViewController: UIViewController {

    @IBOutlet var startButton: UIButton!
    @IBOutlet var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        startButton.tintColor = .red
        startButton.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.layer.opacity = 0.40
        
        NSLayoutConstraint.activate([
            startButton.heightAnchor.constraint(equalToConstant: 60),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            startButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20)
        ])
    }
    
    @IBAction func PressedStart(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main",
                                                    bundle: nil)
        
        let categoryView = storyboard.instantiateViewController(withIdentifier: "CatergoryView") as! CategoryViewController
        
        navigationController?.pushViewController(categoryView,
                                                 animated: true)
    }

}
