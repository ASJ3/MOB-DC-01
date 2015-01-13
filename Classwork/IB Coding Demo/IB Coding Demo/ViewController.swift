//
//  ViewController.swift
//  IB Coding Demo
//
//  Created by Alexis Saint-Jean on 1/12/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBAction func changeLabel(sender: AnyObject) {
        nameLabel.text = nameTextField.text
    }
    
    @IBAction func ChangeLabelOnDrag(sender: UISlider) {
        let sliderValue = Int(sender.value)
        nameLabel.text = "Slider value is \(sliderValue)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

