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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let humanYearsFromTextField = humanYearsTextField.text.toInt()!
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(humanYearsFromTextField * 7)" + " dog years"
        humanYearsTextField.resignFirstResponder()
    
    }

    @IBAction func clearButtonPressed(sender: UIButton) {
        dogYearsLabel.text = ""
        humanYearsTextField.text = ""
    }
    
}

