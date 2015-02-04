//
//  AddViewController.swift
//  Table view demo
//
//  Created by Tedi Konda on 1/28/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

protocol Campus {
    func addCampusToArray(campusName: String)
}

class AddViewController: UIViewController, UITextFieldDelegate {

    @IBAction func pressPostButton(sender: AnyObject) {
        // First step in setting notification
        NSNotificationCenter.defaultCenter().postNotificationName("unhideHiddenLabels", object: nil)
    }
    @IBOutlet weak var hiddenLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var addTextBox: UITextField!
    
    var delegate: Campus?
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        self.delegate?.addCampusToArray(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if self.addTextBox.text.isEmpty {
           self.warningLabel.text = "You didn't type anything!!"
           self.warningLabel.hidden = false
        } else {
            self.warningLabel.hidden = true
        }
        return true
    }
    
    func unhideCurrentLabels(notification: NSNotification) {
        self.hiddenLabel.hidden = false
        println("Triggered unhideHiddenLabels notification")
    }
    
    func textHasChanged(notification: NSNotification) {
        println("Hooray, text has changed")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addTextBox.delegate = self
        self.warningLabel.hidden = true
        self.hiddenLabel.hidden = true
        
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "unhideCurrentLabels:",
            name: "unhideHiddenLabels",
            object: nil)

        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "textHasChanged:",
            name: UITextFieldTextDidChangeNotification,
            object: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
