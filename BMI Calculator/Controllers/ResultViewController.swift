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
    
    
    
    
    //MARK: -View LifeCycle Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        resultOutputLabel.text? = bmiResult!

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
