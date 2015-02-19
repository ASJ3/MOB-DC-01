//
//  ViewController.swift
//  programmaticAutolayout
//
//  Created by Alexis Saint-Jean on 2/11/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var head: UIView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var body = UIView()
        body.backgroundColor = UIColor.greenColor()
        
        //************
        // Whenever we add constraints programmatically we need to use autoconstraint
        body.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Need to add subview before adding constraints
        self.view.addSubview(body)
        
        // Constraints for the body
        let bodyWidth = NSLayoutConstraint(item: body,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            // if you set a static attribute, the toItem is set to nil
            toItem: self.head,
            attribute: NSLayoutAttribute.Width,
            multiplier: 0.5,
            constant: 0.0)
        
        let bodyVerticalPosition = NSLayoutConstraint(item: body,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let bodyHorizontalPosition = NSLayoutConstraint(item: body,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1,
            constant: 22.5)
        
        let bodyHeight = NSLayoutConstraint(item: body,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: self.head.frame.height * 2)
        
        self.view.addConstraints([bodyWidth, bodyHeight, bodyVerticalPosition, bodyHorizontalPosition])
        
        
        var leftArm = UIView()
        leftArm.backgroundColor = UIColor.blackColor()
        self.view.addSubview(leftArm)
        
        leftArm.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        let leftArmHeight = NSLayoutConstraint(item: leftArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 30)
        
        let leftArmLeading = NSLayoutConstraint(item: leftArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 20)
        
        let leftArmVerticalPosition = NSLayoutConstraint(item: leftArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let leftArmTrailing = NSLayoutConstraint(item: leftArm,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1,
            constant: 0.0)
        

        self.view.addConstraints([leftArmHeight,leftArmLeading,leftArmVerticalPosition,leftArmTrailing])
        
        
        var rightArm = UIView()
        rightArm.backgroundColor = UIColor.blackColor()
        self.view.addSubview(rightArm)
        
        rightArm.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        let rightArmHeight = NSLayoutConstraint(item: rightArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 30)
        
        let rightArmLeading = NSLayoutConstraint(item: rightArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: 0.0)
        
        let rightArmVerticalPosition = NSLayoutConstraint(item: rightArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0.0)
        
        let rightArmTrailing = NSLayoutConstraint(item: rightArm,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1,
            constant: -20.0)
        
        
        self.view.addConstraints([rightArmHeight,rightArmLeading,rightArmVerticalPosition,rightArmTrailing])
        
        
        
    }



}

