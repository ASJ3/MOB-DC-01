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
        redBox.layer.masksToBounds = true
        redBox.layer.cornerRadius = 100
        redBox.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleBottomMargin
        self.view.addSubview(redBox)
        
        var redBoxLabel = UILabel(frame: CGRect(x: 0, y: 50, width: redBox.frame.width, height: 30))
        redBoxLabel.text = "Hello World"
        redBoxLabel.textColor = UIColor.whiteColor()
        redBoxLabel.backgroundColor = UIColor.yellowColor()
        redBoxLabel.textAlignment = NSTextAlignment.Center
        
        redBox.addSubview(redBoxLabel)
        
        var actionButton = UIButton(frame: CGRect(x: 0, y: 300, width: self.view.frame.width, height: 30))
        actionButton.backgroundColor = UIColor.greenColor()
        actionButton.setTitle("click me!", forState: .Normal)
        actionButton.addTarget(self, action: "pressedCodedButton:", forControlEvents: .TouchUpInside)
        actionButton.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        
        self.view.addSubview(actionButton)
        
//        var enaImg = UIImage(named: "Slytherin_Shield.png")
//        var enaImgView = UIImageView(image: enaImg)
//        enaImgView.frame = CGRect(x: 50, y: 350, width: enaImg!.size.width, height: 140)
//        enaImgView.autoresizingMask = UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleRightMargin
//        
//        self.view.addSubview(enaImgView)
        
        var boxScrollView = UIScrollView(frame: CGRect(x: 50, y: 350, width: 200, height: 300))
        boxScrollView.backgroundColor =  UIColor.grayColor()
        boxScrollView.contentSize = CGSize(width: 200, height: 600)
        self.view.addSubview(boxScrollView)
        
        var greenBox = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 150))
        greenBox.backgroundColor = UIColor.greenColor()
        var yellowBox = UIView(frame: CGRect(x: 0, y: 150, width: 200, height: 150))
        yellowBox.backgroundColor = UIColor.yellowColor()
        var purpleBox = UIView(frame: CGRect(x: 0, y: 300, width: 200, height: 150))
        purpleBox.backgroundColor = UIColor.purpleColor()
        
        boxScrollView.addSubview(greenBox)
        boxScrollView.addSubview(yellowBox)
        boxScrollView.addSubview(purpleBox)
        
    
        
    }

    
    func pressedCodedButton(sender: UIButton) {
        println("Hello World")
        sender.removeFromSuperview()
        
    }


}

