//
//  ViewController.swift
//  Flat Files
//
//  Created by Alexis Saint-Jean on 2/25/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    @IBAction func dismissKeyboard(sender: UITapGestureRecognizer) {
        self.textView.endEditing(true)
    }
    
    @IBAction func saveButton(sender: UIButton) {
//        var txtPath: NSString? = NSTemporaryDirectory() + "hello.txt"
//        if let fileExists = txtPath {
//        var stringToSave = self.textView.text
//            stringToSave.writeToFile(fileExists, atomically: true, encoding: NSUTF32StringEncoding, error: nil)
//            self.textView.text = "Your text was saved. To see it again, click on the 'View Saved Text' button"
//        
//        }
        
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
        
        
    }
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func loadData(sender: UIButton) {
        var txtPath = NSTemporaryDirectory() + "hello.txt"
//        // make stringToLoad an optional because we are not sure whehther the file exists and will come back to us
//        var stringToLoad: NSString? = NSString(contentsOfFile: txtPath, encoding: NSUTF32StringEncoding, error: nil)
//        
//        if let loadedContent = stringToLoad {
//            println("Content Loaded! Content is : \(loadedContent)")
//            self.textView.text = loadedContent
//        }
        
        // find the documents path
        let fileManager = NSFileManager()
        // path variable will store the physical path to the documents folder
        let path = fileManager.URLsForDirectory(NSSearchPathDirectory.DocumentDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask) as [NSURL]
        
        // If documents path exists run the following code
        if path.count > 0
        {
            // concatenate our file name after our documents path
            var documentPath = path[0].relativePath! as String
            println("doc path is \(documentPath)")
            let mySavedPath = documentPath + "/savedFile.txt"
            
            // Access our file from the path we defined above
            var stringToLoad: NSString? = NSString(contentsOfFile: mySavedPath, encoding: NSUTF32StringEncoding, error: nil)
            
            // If the file exists run the block below
            if let loadedContent = stringToLoad {
                println("content loaded! Content is: \(loadedContent)")
            } else {
                println("could not load")
            }
            
        } else {
            println("Could not save!")
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.textView.delegate = self
//        var tempPath = NSTemporaryDirectory() + "hello.txt"
//        var stringToSave = self.textView.text
//        
//        stringToSave.writeToFile(tempPath, atomically: true, encoding: NSUTF32StringEncoding, error: nil)
//    
//        
//        println(tempPath)
//        
////        stringToSave
//        
//        var fileManager = NSFileManager()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

