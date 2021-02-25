//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Enhui Zhang on 25/2/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi:BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace=String(format: "%.1f",bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValue = weight/(height*height)
        
        if bmiValue<18.5{
            bmi=BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        } else if bmiValue<24.9{
            bmi=BMI(value: bmiValue, advice: "Fit as a fiddele",color: UIColor.green)
        }else{
            bmi=BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
    }
}
