//
//  CalculatorBrain.swift
//  BMICalculatorApp
//
//  Created by Apple on 15/05/22.
//

import UIKit
import Lottie
struct CalculatorBrain {
    var bmi:BMI?
  
    
    mutating func calculateBMI(height:Float,weight:Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5{
         
            bmi = BMI(values: bmiValue, advice: "Eat more pies!", color: UIColor(red: 0.10, green: 0.33, blue: 0.48, alpha: 1.00),lottieAnimation: AnimationView(name: "Pie"))
        }else if bmiValue < 24.5{
          
            bmi = BMI(values: bmiValue, advice: "Fit as a fiddle!", color: UIColor(red: 0.31, green: 0.80, blue: 0.77, alpha: 1.00),lottieAnimation: AnimationView(name: "GoodHealth"))
        }else if bmiValue > 24.9{
         
            bmi = BMI(values: bmiValue, advice: "Eat more Cake!", color: UIColor(red: 0.99, green: 0.73, blue: 0.61, alpha: 1.00),lottieAnimation: AnimationView(name: "Cake"))
        }
        
    }
    func getBMiValue()->String{
        return String(format:"%.1f",bmi?.values ?? 0.0)
    }
    func getAdvice()->String{
        return bmi?.advice ?? ""
    }
    func getColor()->UIColor{
        return bmi?.color ?? UIColor()
    }
    func getLottieAnimation()->AnimationView{
        return bmi?.lottieAnimation ?? AnimationView()
    }
}
