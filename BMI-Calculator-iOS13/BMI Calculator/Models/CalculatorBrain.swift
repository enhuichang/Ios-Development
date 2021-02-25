//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Enhui Zhang on 25/2/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    var bmi:Float?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace=String(format: "%.1f",bmi ?? 0.0)
        return bmiTo1DecimalPlace
    }
    mutating func calculateBMI(height:Float,weight:Float){
         bmi=weight/(height*height)
    }
}
