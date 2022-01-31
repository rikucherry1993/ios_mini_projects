//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 陸影 on 2022/01/26.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    
    mutating func calculateBMI(h height: Float, w weight: Float) {
        let bmiValue = weight / pow(height,2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Overweight", color: .orange)
        }
    }
    
    func getBmiValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}


