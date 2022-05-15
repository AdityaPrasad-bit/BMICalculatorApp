//
//  CalculatorBrain.swift
//  BMICalculatorApp
//
//  Created by Apple on 15/05/22.
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
