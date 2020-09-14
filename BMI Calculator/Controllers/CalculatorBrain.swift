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
    var height:Double?
    var weight:Double?
    var bmiResult:String?
    
    
   mutating func calculateBMI(_ weight:Float, _ height:Float){
         let formattedWeightValue = String(format: "%.0f", weight)
         let kilograms = Int(formattedWeightValue)
         let formattedHeightValue = String(format: "%.2f", height )
         let formattedHeightValueToDouble = Double(formattedHeightValue)
         let squaredMetricHeight = pow(formattedHeightValueToDouble!, 2)
         let metricBMI = Double(kilograms!) / squaredMetricHeight
         let formattedBMI = String(format: "%.1f", metricBMI)
         self.bmiResult = formattedBMI
    
         
        
        
        
        
        
        
        
        
    }
    
//    let formattedWeightValue = String(format: "%.0f",weightSlider.value)
//    let kilograms = Int(formattedWeightValue)
//
//
//    let formattedHeightValue = String(format: "%.2f",heightSlider.value )
//    let formattedHeightValueToDouble = Double(formattedHeightValue)
//
//    let squaredMetricHeight = pow(formattedHeightValueToDouble!, 2)
//
//    let metricBMI = Double(kilograms!) / squaredMetricHeight
//
//    let formattedBMI = String(format: "%.1f", metricBMI)
//    NSLog("MetricBMI Formatted: \(formattedBMI)")
//
//    self.outputBMI = formattedBMI
    
}
