//
//  ThirdViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBAction func randomButton(sender: AnyObject) {
        println("\nsaving the text in the textView...")
        let fileManager = NSFileManager()
        // path variable will store the physical path to the documents folder
        let path = fileManager.URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask) as [NSURL]
        
        if path.count > 0 {
            var documentPath = path[0].relativePath! as String
            let mySavedPath = documentPath + "/savedFile.txt"
            
            println("the file path is: \(mySavedPath)")
            
            var stringToSave = self.textView.text
            stringToSave.writeToFile(mySavedPath, atomically: true, encoding: NSUTF32StringEncoding, error: nil)
            
        } else {
            println("Could not save!")
        }
        
        println("now transitioning")
        showFourthVC()
    }
    
    @IBOutlet weak var textView: UITextView!
    @IBAction func saveAction(sender: AnyObject) {
        println("you clicked on the Next button of the third view controller")

    }
    
    func showFourthVC() {
        
        let newVC = self.storyboard?.instantiateViewControllerWithIdentifier("fourthVC") as FourthViewController
        
        self.presentViewController(newVC, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
