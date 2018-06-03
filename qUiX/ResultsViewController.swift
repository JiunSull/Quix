//
//  ResultsViewController.swift
//  qUiX
//
//  Created by UCode on 5/27/18.
//  Copyright © 2018 Me. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quiz: Quiz!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        showScore(score: quiz.score)
    }
    
    func showScore(score: Int) {
        scoreLabel.text = String(score)
    }

}
