//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by user248634 on 10/5/23.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var responses:[Answer]
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    init?(coder:NSCoder,responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton=true

        // Do any additional setup after loading the view.
    }
    
    func calculatePersonalityResult(){
        let frequencyOfAnswers = responses.reduce(into: [:]) { counts, answer in
            counts[answer.type,default: 0] = counts[answer.type,default: 0]+1
        }
//        let frequentAnswerSorted = frequencyOfAnswers.sorted {
//            (pair1, pair2) in
//            return pair1.value>pair2.value
//        }
        let mostCommonAnswer = frequencyOfAnswers.sorted {
            $0.1>$1.1}.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
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
