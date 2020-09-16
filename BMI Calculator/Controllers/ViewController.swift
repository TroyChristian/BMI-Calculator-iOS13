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
    var outputBMI:String?
    var calculatorBrain = CalculatorBrain() 
    
    
    
    
    
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

        
        self.calculatorBrain.calculateBMI(weightSlider.value, heightSlider.value)
        
       
        self.performSegue(withIdentifier: "showResultSegue", sender: self)
        
    }
    
    
    //MARK: - View LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResultSegue" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiResult = self.calculatorBrain.getBMIValue()
            destinationVC.category = self.calculatorBrain.getBMIRangeAndSetBMICategory()
            destinationVC.colorBool = self.calculatorBrain.getBMIColor()
            
        }
    }


        
    }
    



