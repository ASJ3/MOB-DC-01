//
//  ViewController.swift
//  arrayToDo
//
//  Created by Alexis Saint-Jean on 1/28/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textBox: UITextField!
    @IBAction func addTaskToList(sender: AnyObject) {
        self.toDoList.append(self.textBox.text)
        println(self.toDoList.last!)
    }
    
    var toDoList = ["wash the car","clean the kicthen","watch a movie", "go shopping", "take a nap", "walk the dog"]
    
    // Function that ensures the keyboard disappear after the player enters 'Return'
    // on the pop-up keyboard when they are done entering their name
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        toDoList.append("write an email")
        self.textBox.delegate = self
        
        
        for var i = 0; i < toDoList.count; i++ {
            println("The object at index \(i) is \(self.toDoList[i])")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

