//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func uisliderHeight(_ sender: UISlider) {
//        print(round(100*sender.value)/100)
        heightLabel.text = "\(String(format:"%.2f",sender.value))m"
        
    }
    @IBAction func uisliderWeight(_ sender: UISlider) {
//        print(round(100*sender.value)/100)
        print(String(format:"%.f",sender.value))
        weightLabel.text = "\(String(format:"%.f",sender.value))kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height:height,weight:weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
// this method triggers everytime
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destination = segue.destination as! ResultViewController
            destination.bmiValue = calculatorBrain.getBMiValue()
        }
        else{
            
        }
    }
}

