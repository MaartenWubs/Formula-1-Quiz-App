//
//  StartViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/15/21.
//

import UIKit
import MaterialComponents

class StartViewController: UIViewController {

    @IBOutlet var startButton: MDCButton!
    @IBOutlet var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        startButton.tintColor = .red
        backgroundImageView.layer.opacity = 0.40
    }
    
    @IBAction func PressedStart(_ sender: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main",
                                                    bundle: nil)
        
        let categoryView = storyboard.instantiateViewController(withIdentifier: "CatergoryView") as! CategoryViewController
        
        navigationController?.pushViewController(categoryView,
                                                 animated: true)
    }

}
