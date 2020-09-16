//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Lambda_School_Loaner_219 on 9/14/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import Darwin

struct CalculatorBrain{
 
    var bmiResult:Double?
    var bmiCategory:String?
    
    func getBMIValue() -> String {
        let formattedBMI = String(format: "%.1f", bmiResult!)
        return formattedBMI
    }
    
    
   mutating func calculateBMI(_ weight:Float, _ height:Float){
         let formattedWeightValue = String(format: "%.0f", weight)
         let kilograms = Int(formattedWeightValue)
         let formattedHeightValue = String(format: "%.2f", height )
         let formattedHeightValueToDouble = Double(formattedHeightValue)
         let squaredMetricHeight = pow(formattedHeightValueToDouble!, 2)
         let metricBMI = Double(kilograms!) / squaredMetricHeight
         //let formattedBMI = String(format: "%.1f", metricBMI)
         //self.bmiResult = formattedBMI
        self.bmiResult = metricBMI
    
}
   mutating func getBMIRangeAndSetBMICategory() -> String {
         let normalRange = 18.5 ... 25.0
         let overweightRange = 25.0 ... 30
         
         
         if let safeBMIResult = self.bmiResult {
         switch self.bmiResult {
         case _ where safeBMIResult < 18.5:
            self.bmiCategory = "underweight"
             return "Underweight, eat some snacks!"
         case _ where normalRange.contains(safeBMIResult) :
            self.bmiCategory = "normal"
             return "Normal weight range, good work!"
         case _ where overweightRange.contains(safeBMIResult):
            self.bmiCategory = "Normal"
             return "Overweight, time to turn this ship around!"
             
         case _ where safeBMIResult > 30:
            self.bmiCategory = "obese"
             return "Obese, its never to late to get healthy!"
         default:
            self.bmiCategory = nil
             return "BMI uncategorized."
             
         }
         
         
     }
     return "no bmi set."
          
     
     }
    
    func  getBMIColor() -> Bool {
        if self.bmiCategory != nil {
            if bmiCategory == "normal" {
                return true
            } else {
                return false
            }
        
    }
        return false
}

}
