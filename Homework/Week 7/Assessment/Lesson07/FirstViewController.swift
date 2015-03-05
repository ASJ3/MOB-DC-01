//
//  FirstViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        var test_number = defaults.objectForKey("test_number") as Int
        var test_string = defaults.objectForKey("test_string") as String
        
        var test_slider = defaults.objectForKey("settings_slider") as Float
        var settings_name = defaults.objectForKey("settings_name") as String
        
        self.textView.text = "NSUserDefaults:\n\ntest string is: \(test_string)\ntest number is: \(test_number)\nslider settings is: \(test_slider)\nSettings name is: \(settings_name)"
              
//        NSUserDefaults.standardUserDefaults().synchronize()
//        println(NSUserDefaults.standardUserDefaults().dictionaryRepresentation());
        
    }
}