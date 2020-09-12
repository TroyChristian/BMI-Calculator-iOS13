//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightSlider: UISlider!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBOutlet weak var heightLabel: UILabel!
    
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBAction func heightSliderChanged(_ sender: Any) {
        
        let formattedHeightValue = String(format: "%.1f",heightSlider.value ) + "m"
        heightLabel.text = String(formattedHeightValue)
    }
    
    
    @IBAction func weightSliderChanged(_ sender: Any) {
                let formattedWeightValue = String(format: "%.0f",weightSlider.value) + "kg"
        weightLabel.text = formattedWeightValue
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

