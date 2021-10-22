//
//  CategoryViewViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/15/21.
//

import UIKit
import MaterialComponents

class CategoryViewController: UIViewController {
    
    //MARK: Button properties
    var currentSeasonButton: MDCButton = {
        let button = MDCButton()
        button.tag = 0
        button.setTitle("Current Season",
                        for: .normal)
        return button
    }()
    
    var historyQuizButton: MDCButton = {
        let button = MDCButton()
        button.tag = 1
        button.setTitle("History",
                        for: .normal)
        return button
    }()
    
    var driverQuizButton: MDCButton = {
        let button = MDCButton()
        button.tag = 2
        button.setTitle("Drivers Quiz",
                        for: .normal)
        return button
    }()

    let quiz = QuizModel()
    
    //MARK: View Code
    override func viewDidLoad() {
        super.viewDidLoad()
        createButtons()
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
    
    @IBAction func ProfilePressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main",
                                      bundle: nil)
        let profileView = storyboard.instantiateViewController(withIdentifier: "MenuPage") as! MenuViewController
        navigationController?.pushViewController(profileView,
                                                 animated: true)
    }
    

}
