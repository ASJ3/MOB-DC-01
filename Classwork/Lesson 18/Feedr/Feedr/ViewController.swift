//
//  ViewController.swift
//  Feedr
//
//  Created by Tedi Konda on 3/2/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    var tempData = ["Ena's tail is apperantly OK", "MOB Class is awesome", "Pigs sighted flying"]
    
    var json: JSON?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Conditional unwrap the NSURL with the URL we want to fetch data from
        if let url = NSURL(string: "http://www.reddit.com/.json") {
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in

                
                // convert the data to the JSON format so we can start using it because the data we initially get back from the server is just bits
                // jsonDict needs to be conditional because the data we got back might not be convertible to JSON
                if let jsonDict: AnyObject = NSJSONSerialization.JSONObjectWithData(data , options: nil, error: nil) {
//                    self.json = jsonDict as? NSDictionary
                }
                let newJsonDict = JSON(data: data)
                self.json = newJsonDict
                
                // IMPORTANT dispatch_get_main_queue() is what pushes the task to the main thread of the app
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    // IMPORTANT we need to reload the data we got into our table view
                    self.tableView.reloadData()
                })
            })
            // We still need to resume the task to start task, otherwise it sits on the side and does nothing
            task.resume()
            
        }
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let jsonData = self.json {
//            if let data = jsonData["data"] as? NSDictionary {
//                if let children = data["children"] as? NSArray {
//                    return children.count
//                }
//            }
            return jsonData["data"]["children"].count
        }
        
        // in case the jsonData does not return then we are returning 0
        return 0
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        if cell == nil  {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        }
        
        if let jsonDict = self.json {
//            if let data = jsonDict["data"] as? NSDictionary {
//                if let children = data["children"] as? NSArray {
//                    if let child = children[indexPath.row] as? NSDictionary {
//                        if let childData = child["data"] as? NSDictionary {
//                            if let title = childData["title"] as? NSString {
//                                cell.textLabel?.text = title
//                            }
//                        }
//                    }
//                }
//            }
            cell.textLabel?.text = jsonDict["data"]["children"][indexPath.row]["data"]["title"].string
        }
        
//        cell.textLabel?.text = self.tempData[indexPath.row]
        return cell
    }
    
    //on click
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let jsonDict = self.json {
//            if let data = jsonDict["data"] as? NSDictionary {
//                if let children = data["children"] as? NSArray {
//                    if let child = children[indexPath.row] as? NSDictionary {
//                        if let childData = child["data"] as? NSDictionary {
//                            if let permalink = childData["permalink"] as? NSString {
//                                var url = NSURL(string: "http://reddit.com" + permalink)
//                                performSegueWithIdentifier("web", sender: NSURLRequest(URL: url!))
//                            }
//                            
//                            }
//                        }
//                    }
//                }
            var permalink = jsonDict["data"]["children"][indexPath.row]["data"]["permalink"].string
            var url = NSURL(string: "http://reddit.com" + permalink!)
            performSegueWithIdentifier("web", sender: NSURLRequest(URL: url!))
            }
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let request = sender as? NSURLRequest {
            var destinationViewController = segue.destinationViewController as WebViewController
            destinationViewController.request = request
        }
    }


}

