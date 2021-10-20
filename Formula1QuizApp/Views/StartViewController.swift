//
//  StartViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/15/21.
//

import UIKit
import MaterialComponents

class StartViewController: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView!
    
    let startButton: MDCButton = {
        let button = MDCButton()
        button.setBackgroundColor(.red)
        button.rippleColor = .white
        button.enableRippleBehavior = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Start Game",
                        for: .normal)
        
        button.setTitleFont(UIFont(name: "Formula1 Display Regular",
                                   size: 20),
                            for: .normal)
        
        button.layer.cornerRadius = 15
        
        button.addTarget(self,
                         action: #selector(pressedStart),
                         for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(startButton)
        
        backgroundImageView.layer.opacity = 0.40
        
        NSLayoutConstraint.activate([
            startButton.heightAnchor.constraint(equalToConstant: 60),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            startButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20)
        ])
    }
    
    @objc
    func pressedStart() {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main",
                                                    bundle: nil)
        
        let categoryView = storyboard.instantiateViewController(withIdentifier: "CatergoryView") as! CategoryViewController
        
        navigationController?.pushViewController(categoryView,
                                                 animated: true)
    }

}
