//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    
   //MARK: Variables, Constants, Instances
    
    
    
    
    
    //MARK: -IBoutlets & IBActions
    @IBOutlet weak var heightSlider: UISlider!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBOutlet weak var heightLabel: UILabel!
    
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBAction func heightSliderChanged(_ sender: Any) {
        
        let formattedHeightValue = String(format: "%.2f",heightSlider.value ) + "m"
        heightLabel.text = String(formattedHeightValue)
    }
    
    
    @IBAction func weightSliderChanged(_ sender: Any) {
                let formattedWeightValue = String(format: "%.0f",weightSlider.value) + "kg"
        weightLabel.text = formattedWeightValue
    }
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        //Metric forumula
        // BMI in (kg/m2) = mass in kilograms divided by the square height in meters
        //bmi = weight(kg) / height(m)2
        
        let formattedWeightValue = String(format: "%.0f",weightSlider.value)
        let kilograms = Int(formattedWeightValue)
        
        
        let formattedHeightValue = String(format: "%.2f",heightSlider.value )
        let formattedHeightValueToDouble = Double(formattedHeightValue)
        
        let squaredMetricHeight = pow(formattedHeightValueToDouble!, 2)
        
        let metricBMI = Double(kilograms!) / squaredMetricHeight
        
        let formattedBMI = String(format: "%.1f", metricBMI)
        NSLog("MetricBMI Formatted: \(formattedBMI)")
        
        
        
        // Imperial Formula
        //divide lbs by height
        //divide the result by height again
        //multiply this result by 703
        
        // product == bmi
    }
    
    
    //MARK: - View LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

