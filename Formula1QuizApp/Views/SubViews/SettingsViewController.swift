//
//  SettingsViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/17/21.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        let textLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Test"
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

}
