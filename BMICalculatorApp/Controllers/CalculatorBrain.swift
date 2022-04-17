//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Apple on 17/04/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi:Float?
  
    
    mutating func calculateBMI(height:Float,weight:Float) {
        bmi = weight / (height * height)
    }
    func getBMiValue()->String{
        return String(format:"%.1f",bmi!)
    }
}
