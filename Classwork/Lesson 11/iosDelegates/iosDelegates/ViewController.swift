//
//  ViewController.swift
//  iosDelegates
//
//  Created by Alexis Saint-Jean on 2/2/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    @IBOutlet weak var campusesTable: UITableView!
    @IBOutlet weak var nameTextField: UITextField!
    
    var gaCampuses: [String] = ["VA","NY"]
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        println("return key pressed")
        textField.resignFirstResponder()
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if gaCampuses.isEmpty {
            println("Your table view is empty")
            campusesTable.hidden = true
        }
        self.nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gaCampuses.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor.redColor()
            cell.textLabel?.textColor = UIColor.whiteColor()
        }
    cell.textLabel?.text = self.gaCampuses[indexPath.row]
    return cell
    }



}

