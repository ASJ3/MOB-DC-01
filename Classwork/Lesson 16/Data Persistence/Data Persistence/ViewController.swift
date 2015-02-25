//
//  ViewController.swift
//  Data Persistence
//
//  Created by Alexis Saint-Jean on 2/23/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject("light", forKey: "theme")
        // We get the "theme" from standardUserDefaults() and change the colors of the view dependig on which theme was chosen
        let theme = defaults.objectForKey("theme") as String
        if theme == "dark" {
            self.view.backgroundColor = UIColor.blackColor()
            self.helloLabel.textColor = UIColor.whiteColor()
        } else {
            self.view.backgroundColor = UIColor.whiteColor()
            self.helloLabel.textColor = UIColor.blackColor()
        }
        
        // booksPath is a string that is the path to the Books.plist file we created
        var booksPath = NSBundle.mainBundle().pathForResource("Books", ofType: "plist")
        
        
        var books = NSMutableArray(contentsOfFile: booksPath!)
//
//        // setValue() only modifies book but it does not persist the change
        books![0].setValue("Ena's world 2", forKey: "Title")
//        // To persist the changes we did we need to do
        books?.writeToFile(booksPath!, atomically: true)
//
        println(books!)
//
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

