//
//  ViewController.swift
//  autoLayout
//
//  Created by Alexis Saint-Jean on 2/9/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func increaseDistanceBtwnPacmanAndGhost(sender: AnyObject) {
        self.verticalSpacingBtwnPurpleGhostAndPacman.constant *= 1.5
        UIView.animateWithDuration(1, animations: {self.view.layoutIfNeeded()})
        
        
    }
    @IBOutlet weak var verticalSpacingBtwnPurpleGhostAndPacman: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

