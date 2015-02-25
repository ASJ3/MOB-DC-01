//
//  ViewController.swift
//  Athlete Names
//
//  Created by Alexis Saint-Jean on 2/23/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let defaults = NSUserDefaults.standardUserDefaults()
        
        var athletesExist = defaults.objectForKey("athletes") as NSArray as Array
        

        println(athletesExist)
        
        var coachesPath = NSBundle.mainBundle().pathForResource("coaches", ofType: "plist")
        var coachesArray = NSMutableArray(contentsOfFile: coachesPath!)
        
        for i in coachesArray! {
        println(i["Title"]! as String)
        println(i["Name"]! as String)
        println(i["Experience"]! as Int)
            var coachTitle = i["Title"]! as String
        println("coach's name is \(coachTitle)")
            
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

