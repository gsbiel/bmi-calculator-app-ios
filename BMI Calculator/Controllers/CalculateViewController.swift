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
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height, weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Quando um "segue" e acionado, essa funcao e acionada.
        // Como uma tela pode estar conectada a varias outras por diferentes "segues", temos que identificar qual segue foi acionado para separar a logica apropriada para cada situacao.
        if segue.identifier == "goToResult" {
            // segue.destination e do tipo UIViewController. Esse tipo nao possui o atributo bmiValue. Quem possui e o tipo ResultViewController (um filho de UIViewController). Para que a linha destinationVC.bmiValue seja reconhecida, voce tem que especificara segue.destination como sendo do tipo ResultViewController.
            let destinationVC = segue.destination as! ResultViewController
    
            destinationVC.bmiValue = String(format: "%.2f",calculatorBrain.getBMIValue())
        }
    }

}

