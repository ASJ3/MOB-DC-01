//
//  ViewController.swift
//  programmaticLoginView
//
//  Created by Alexis Saint-Jean on 2/4/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var titleLabel = UILabel(frame: CGRect(x: self.view.frame.width * 0.05, y: 20, width: self.view.frame.width * 0.9, height: 30))
        titleLabel.text = "This is the Title"
        titleLabel.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        self.view.addSubview(titleLabel)
        
        var usernameBox = UITextField(frame: CGRect(x: self.view.frame.width * 0.05, y: 70, width: self.view.frame.width * 0.9, height: 30))
        usernameBox.placeholder = "Username"
        usernameBox.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        self.view.addSubview(usernameBox)
        
        var loginBox = UITextField(frame: CGRect(x: self.view.frame.width * 0.05, y: 130, width: self.view.frame.width * 0.9, height: 30))
        loginBox.placeholder = "Password"
        loginBox.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        self.view.addSubview(loginBox)
        
        var submitBtn = UIButton(frame: CGRect(x: self.view.frame.width * 0.05, y: 200, width: self.view.frame.width * 0.9, height: 30))
        submitBtn.backgroundColor = UIColor.blueColor()
        submitBtn.setTitle("Submit", forState: .Normal)
        submitBtn.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        submitBtn.addTarget(self, action: "submitPressed:", forControlEvents: .TouchUpInside)
        self.view.addSubview(submitBtn)
        
    }

    func submitPressed(sender: UIButton) {
        println("Submitted!!")
    }
    


}

