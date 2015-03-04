//
//  ThirdViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(animated: Bool) {
        println("\nyou clicked on the Next button of the third view controller")
        
        println("saving the text in the textView...")
        let fileManager = NSFileManager()
        // path variable will store the physical path to the documents folder
        let path = fileManager.URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask) as [NSURL]
        
        if path.count > 0 {
            var documentPath = path[0].relativePath! as String
            let mySavedPath = documentPath + "/savedFile.txt"
            
            println("\nthe file path is: \(mySavedPath)")
            
            var stringToSave = self.textView.text
            stringToSave.writeToFile(mySavedPath, atomically: true, encoding: NSUTF32StringEncoding, error: nil)
            
        } else {
            println("Could not save!")
        }
        
        println("now transitioning to fourthVC")
    }
}
