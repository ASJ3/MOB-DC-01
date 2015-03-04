//
//  SecondViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
// TODO two: Make this text view print the values of the string and slider value stored in the settings bundle of the app.
    
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        let settingsBundle = NSBundle.mainBundle().pathForResource("Settings", ofType: "bundle")

        let settings = NSDictionary(contentsOfFile: settingsBundle!+"/Root.plist")
        
        if settings != nil {
            println("Accessing the Root.plist from the settings bundle:")
            for (key, value) in settings! {
                println("key from Root.plist is \(key as String) and has \(settings![key as String]!.count) values/objects")
            }
            
            var newDico = settings!["PreferenceSpecifiers"] as NSArray
            println(newDico[1])
            println(newDico[2])

            
            var stringKey = newDico[1]["Key"]! as String
            var sliderKey = newDico[2]["Key"]! as String
            
            var stringValue = newDico[1]["DefaultValue"]! as String
            var sliderValue = newDico[2]["DefaultValue"]! as Float
            
            self.textView.text = "Values from the settings bundle:\n\n\(stringKey) value is: \(stringValue)\n\(sliderKey) value is: \(sliderValue)"
        } else {
            self.textView.text = "could not find the default values in the settings bundle"
        }
        
        
//        var rootPath = NSBundle.mainBundle().pathForResource("Settings", ofType: "bundle")
//        var newRoot = NSBundle.mainBundle().pathForResource("Settings.bundle/Root", ofType: "plist")
//        let rootContent = NSArray(contentsOfFile: newRoot!)
//        if rootPath != nil {
//            println("rootPath worked!")
//        } else {
//            println("rootPath didn't work")
//        }
//        if newRoot != nil {
//            println("newRoot worked!")
//            
//        }
    }
}
