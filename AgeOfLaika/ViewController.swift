//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Edward Clark on 1/20/15.
//  Copyright (c) 2015 Edward Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var pleaseEnterAValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        if humanYearsTextField.text == "" {
            pleaseEnterAValue.hidden = false
            dogYearsLabel.hidden = true
        }
        else
        {
        var realDogYears = Double((humanYearsTextField.text as NSString).doubleValue)
        if realDogYears <= 2 {
            realDogYears = realDogYears * 10.5
        } else {
            realDogYears = (10.5 * 2) + (realDogYears - 2) * 4
        }
        dogYearsLabel.text = "\(realDogYears)" + " real dog years"
        dogYearsLabel.hidden = false
        pleaseEnterAValue.hidden = true
        humanYearsTextField.resignFirstResponder()
        }
    
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        if humanYearsTextField.text == "" {
        pleaseEnterAValue.hidden = false
        dogYearsLabel.hidden = true
        }
        else
        {
            let humanYearsFromTextField = humanYearsTextField.text.toInt()!
            dogYearsLabel.text = "\(humanYearsFromTextField * 7)" + " dog years"
            dogYearsLabel.hidden = false
            pleaseEnterAValue.hidden = true
            humanYearsTextField.resignFirstResponder()
        }
    
    }

    @IBAction func clearButtonPressed(sender: UIButton) {
        dogYearsLabel.text = ""
        humanYearsTextField.text = ""
        pleaseEnterAValue.hidden = true
    }
    
  

    
}

