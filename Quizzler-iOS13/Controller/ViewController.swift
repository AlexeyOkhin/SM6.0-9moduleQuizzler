//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var buttonTrue: UIButton!
    @IBOutlet weak var buttonFalse: UIButton!
    @IBOutlet weak var progressQuizz: UIProgressView!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateUI()
    }
    @IBAction func actionPressButton(_ sender: UIButton) {
       
        let answerUser = sender.currentTitle!
        let userGotAnswer = quizBrain.actualAnswer(answerUser)
        
        if userGotAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block:   {
            timer in
            self.updateUI()
        })
        
    }
    
    func updateUI()  {
        buttonOne.setTitle(quizBrain.getAnswerButton()[0], for: .normal)
        buttonTrue.setTitle(quizBrain.getAnswerButton()[1], for: .normal)
        buttonFalse.setTitle(quizBrain.getAnswerButton()[2], for: .normal)
        labelQuestion.text = quizBrain.getQuestion()
        progressQuizz.progress = quizBrain.progress()
        buttonOne.backgroundColor = UIColor.clear
        buttonTrue.backgroundColor = UIColor.clear
        buttonFalse.backgroundColor = UIColor.clear
        labelScore.text = "Score: \(quizBrain.getScore())"
        
    }
    

}

