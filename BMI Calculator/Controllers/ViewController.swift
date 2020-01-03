//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onHeightChange(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f m", sender.value)
    }
    
    @IBAction func onWeightChange(_ sender: UISlider) {
        weightLabel.text = String(format: "%d kg", Int(sender.value))
    }
    
    
    @IBAction func onCalculatePressed(_ sender: UIButton) {
        let ibm = weightSlider.value / (heightSlider.value*heightSlider.value)
        print(String(format: "%.2f", ibm))
    }
}

