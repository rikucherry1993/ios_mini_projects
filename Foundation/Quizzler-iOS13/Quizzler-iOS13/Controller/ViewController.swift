//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let answer = sender.currentTitle!
        
        if quizBrain.checkAnswer(answer) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        switchButtonsEnability(false)
    
        quizBrain.gotoNext()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.updateUI()
            self.switchButtonsEnability(true)
        }
    }
    
    func updateUI() {
        questionLabel.text = quizBrain.getCurrentQuestion()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getCurrentProgress()
    }
    
    func switchButtonsEnability(_ enable: Bool) {
        trueButton.isEnabled = enable
        falseButton.isEnabled = enable
    }
    
}

