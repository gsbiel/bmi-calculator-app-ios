//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by user161182 on 1/6/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var BMI : Float = 0.0
    
    mutating func calculateBMI(_ height : Float, _ weight : Float){
        BMI = weight / (height * height)
    }
    
    func getBMIValue() -> Float {
        return BMI
    }
    
}
