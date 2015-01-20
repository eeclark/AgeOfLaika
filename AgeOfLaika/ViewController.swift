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
    }
    
}

