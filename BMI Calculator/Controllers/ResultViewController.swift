//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Lambda_School_Loaner_219 on 9/12/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //MARK: - IBOutlets && IBActions
    
    @IBOutlet weak var resultOutputLabel: UILabel!
    
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    @IBAction func recalculateButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion:nil) 
        
    }
    
    //MARK: -Variables
    var bmiResult:String?
    var category:String?
    var colorBool:Bool?
    
    
    
    
    //MARK: -View LifeCycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        resultOutputLabel.text? = bmiResult!
        adviceLabel.text? = category!
        if colorBool! { // if bmiResult is healthy in calc brain, this will be true, and will set the bg color to green.
            self.view.backgroundColor = UIColor.green
        } else {
            self.view.backgroundColor = UIColor.red
        }
    

 

}
}
