//
//  ViewController.swift
//  Table views and scenes
//
//  Created by Alexis Saint-Jean on 1/26/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var swipeView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initiateRightSwipeOnRedBox()
        initiateDoubleTapOnRedBox()
        
    }
    
    func initiateDoubleTapOnRedBox() {
        
        let dTap = UITapGestureRecognizer(target: self, action: "doubleTapped:")
        
        dTap.numberOfTapsRequired = 2
        self.swipeView.addGestureRecognizer(dTap)
    }
    
    
    func doubleTapped(sender: UISwipeGestureRecognizer) {
//        self.resultsLabel.text = "You tapped on the box"
//        UIView.animateWithDuration(1.0, animations: {self.swipeView.backgroundColor = UIColor.blueColor()})
        var thirdVC = self.storyboard?.instantiateViewControllerWithIdentifier("thirdVC") as ThirdViewController
        
        self.presentViewController(thirdVC, animated: true, completion: nil)
        
    }
    
    
    func initiateRightSwipeOnRedBox() {
        let swipeR = UISwipeGestureRecognizer(target: self, action: "swipedRight:")
        
        swipeR.direction = UISwipeGestureRecognizerDirection.Right
        
        self.swipeView.addGestureRecognizer(swipeR)
    }
    
    func swipedRight(sender: UISwipeGestureRecognizer) {
//        self.resultsLabel.text = "You swiped right!"
        self.performSegueWithIdentifier("showSecondVC", sender: self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

