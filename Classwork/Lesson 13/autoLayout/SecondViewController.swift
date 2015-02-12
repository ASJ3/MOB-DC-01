//
//  SecondViewController.swift
//  autoLayout
//
//  Created by Alexis Saint-Jean on 2/9/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var heightOfSmile: NSLayoutConstraint!
    @IBAction func changeSmile(sender: AnyObject) {
        self.heightOfSmile.constant = 120
        UIView.animateWithDuration(1, animations: {self.view.layoutIfNeeded()})
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
