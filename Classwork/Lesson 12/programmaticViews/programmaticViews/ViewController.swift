//
//  ViewController.swift
//  programmaticViews
//
//  Created by Alexis Saint-Jean on 2/4/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var redBox = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        redBox.backgroundColor = UIColor.redColor()
        redBox.layer.cornerRadius = 50
        self.view.addSubview(redBox)
        
        var redBoxLabel = UILabel(frame: CGRect(x: 0, y: 50, width: redBox.frame.width, height: 30))
        redBoxLabel.text = "Hello World"
        redBoxLabel.textColor = UIColor.whiteColor()
        redBoxLabel.backgroundColor = UIColor.yellowColor()
        redBoxLabel.textAlignment = NSTextAlignment.Center
        
        redBox.addSubview(redBoxLabel)
        
        var actionButton = UIButton(frame: CGRect(x: 50, y: 300, width: 200, height: 30))
        actionButton.backgroundColor = UIColor.greenColor()
        actionButton.setTitle("click me", forState: .Normal)
        actionButton.addTarget(self, action: "pressedCodedButton:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(actionButton)
    
        
    }

    
    func pressedCodedButton(sender: UIButton) {
        println("Hello World")
        sender.removeFromSuperview()
        
    }


}

