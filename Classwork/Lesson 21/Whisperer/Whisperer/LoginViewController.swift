//
//  LoginViewController.swift
//  Whisperer
//
//  Created by Alexis Saint-Jean on 3/11/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class LoginViewController: ViewController {
    @IBOutlet weak var feeback: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!

    @IBAction func logIn(sender: AnyObject) {
        PFUser.logInWithUsernameInBackground(
            self.username.text, password: self.password.text) { (user: PFUser!, error: NSError!) -> Void in
                if user != nil {
                    self.feeback.text = "successfully logged in!"
                    //This is where you perform a segue to the other viewController where you enter whispers
                } else {
                    self.feeback.text = "Error logging in!"
                }
        }
    }
    
    @IBAction func register(sender: AnyObject) {
        var user = PFUser()
        user.username = self.username.text
        user.password = self.password.text
        user.email = self.username.text
        
        user.signUpInBackgroundWithBlock { (succeded: Bool!, error: NSError!) -> Void in
            if error == nil {
                self.feeback.text = "Successfully signed up!"
                self.username.text = ""
                self.password.text = ""
            } else {
                let userError = error.userInfo!["error"] as? NSString
                self.feeback.text = userError
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var currentUser = PFUser.currentUser()
        
        if currentUser != nil {
            println("you are logged in!")
            println(currentUser)
        } else  {
            println("Not logged in!")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
