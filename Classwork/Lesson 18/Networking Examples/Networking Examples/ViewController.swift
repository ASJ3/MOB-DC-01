//
//  ViewController.swift
//  Networking Examples
//
//  Created by Alexis Saint-Jean on 3/2/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let url = NSURL(string: "http://googleisghdfkghkdfg.com")
        
        // This following line of code is to send a request to the server
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, responses, error) -> Void in
            // Pass our NSData return to a string so that we can use that string in our textView
            var stringData = NSString(data: data, encoding: NSUTF8StringEncoding)
            
            if error != nil {
                stringData = "There was an error while fetching the data. Could not load."
            }
            
            // UI updates need to happen on the main thread of our app. By default NSURLSession connections happen as a side thread, so we have to access our main thread by dispatching to main queue to update our view.
            
            // the NSURLSession gets executed as a side thread which does not get completed at the same time as the main thread of the app.
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.textView.text = stringData
                
            })
            
            
//            println(data)
//            println(responses)
//            println(error)
            
        })
        
        task.resume()
        
    }


}

