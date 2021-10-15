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
    
    
    //Action
    @IBAction func CurrentSeasonSelected(_ sender: UIButton) {
        print("pressed")
        let storyboard: UIStoryboard = UIStoryboard(name: "Main",
                                                    bundle: nil)
        
        let quizView = storyboard.instantiateViewController(withIdentifier: "QuizView") as! QuizViewController
        
        navigationController?.pushViewController(quizView,
                                                 animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentSeasonButton.tintColor = .red
    }
    
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
