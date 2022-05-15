//
//  ResultViewController.swift
//  BMICalculatorApp
//
//  Created by Apple on 15/05/22.
//

import UIKit
import Lottie

class ResultViewController: UIViewController {

    @IBOutlet var uiView: UIView!
    @IBOutlet var resultBackground: UIImageView!
    var bmiValue:String?
    var advice:String?
    var color:UIColor?
    var lottieAnimation:AnimationView?
    @IBOutlet var adviceLabel: UILabel!
    @IBOutlet var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        resultBackground.backgroundColor = color
        self.lottieAnimation?.frame = self.uiView.bounds
        self.lottieAnimation?.contentMode = .scaleAspectFit
        self.lottieAnimation?.center = self.uiView.center
        self.lottieAnimation?.loopMode = .loop
        self.lottieAnimation?.play()
        self.uiView.addSubview(self.lottieAnimation!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
