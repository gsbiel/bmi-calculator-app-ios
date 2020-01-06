//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by user161182 on 1/6/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(_ height : Float, _ weight : Float){
        
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValue >= 18.5 && bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> Float {
        return bmi?.value ?? 0.00
    }
    
    func getAdvice(){
        return bmi?.advice
    }
    
    func getColor(){
        
    }
}
