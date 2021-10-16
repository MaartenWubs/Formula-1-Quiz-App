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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
