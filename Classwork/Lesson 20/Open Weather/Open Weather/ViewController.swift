//
//  ViewController.swift
//  Open Weather
//
//  Created by Alexis Saint-Jean on 3/9/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherDescription: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=washington,dc") {
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
                
                if let weatherDict = NSJSONSerialization.JSONObjectWithData(data, options: .allZeros, error: nil) as? NSDictionary {
                    if let weather = weatherDict["weather"] as? NSArray {
                        if let firstItem = weather[0] as? NSDictionary {
                            if let description = firstItem["description"] as? NSString {
                                dispatch_async(dispatch_get_main_queue(), {() -> Void in
                                    self.weatherDescription.text = description
                                
                                })
                            }
                        }
                    }
                }
                
            })
            task.resume()
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

