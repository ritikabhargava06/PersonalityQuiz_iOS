//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by user248634 on 10/5/23.
//

import UIKit

class IntroductionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToQuizIntroduction(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }


}

