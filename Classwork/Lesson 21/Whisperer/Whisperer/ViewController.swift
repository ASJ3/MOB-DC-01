//
//  ViewController.swift
//  Whisperer
//
//  Created by Alexis Saint-Jean on 3/11/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var whisper: UITextView!
    @IBOutlet weak var whisperCat: UITextField!

    
    @IBAction func saveWhisper(sender: AnyObject) {
        var whisperP = PFObject(className: "Whisper")
        whisperP["whisper"] = self.whisper.text
        whisperP["user"] = "Tedi"
        whisperP["category"] = self.whisperCat.text
        whisperP.saveInBackgroundWithBlock { (success: Bool, error: NSError!) -> Void in
            if(success) {
                println(whisperP.objectId)
                println("Whisper saved succesfully")
                self.whisper.text = ""
                self.whisperCat.text = ""
            } else {
                println(error.description)
            }
        }
        
        
    }
    
    @IBAction func readWhispers(sender: AnyObject) {
        var whisperQuery = PFQuery(className: "Whisper")
        whisperQuery.whereKey("category", equalTo: self.whisperCat.text)
        whisperQuery.findObjectsInBackgroundWithBlock { (whisperObjects: [AnyObject]!, error: NSError!) -> Void in
            for whisper in whisperObjects {
//                println(whisper["whisper"])
                if let whisperTitle: AnyObject? = whisper["whisper"] {
                    println(whisperTitle)
                }
            }
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

        
        
    }


}

