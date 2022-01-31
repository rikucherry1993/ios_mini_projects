//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    let boilTimeMap = [
        "Soft" : 300,
        "Medium" : 420,
        "Hard" : 720
    ]
    
    var secondsRemaining = 0
    var secondsTotal = 0
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        progressView.progress = 1.0
        
        secondsTotal = boilTimeMap[sender.currentTitle!]!
        secondsRemaining = secondsTotal
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        secondsRemaining -= 1
        
        if secondsRemaining > 0 {
            progressView.progress = Float(secondsRemaining) / Float(secondsTotal)
        } else {
            titleLabel.text = "Time's Up!"
            timer.invalidate()
            progressView.progress = 0.0
            DispatchQueue.main.asyncAfter(deadline: .now()+2.0) {
                self.titleLabel.text = "How do you like your eggs?"
                self.progressView.progress = 1.0
            }
            
        }
    }
    
}
