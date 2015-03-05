//
//  TableViewController.swift
//  Mashable Networking
//
//  Created by Alexis Saint-Jean on 3/4/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var json: NSDictionary?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        println("starting viewDidLoad\n")
        
        if let url = NSURL(string: "http://www.mashable.com/stories.json") {
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
                if let jsonDict: AnyObject = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: nil) {
                    self.json = jsonDict as? NSDictionary
                    println("assigning a dictionary to self.json\n")
//                    println(self.json)
                }
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    // IMPORTANT we need to reload the data we got into our table view
                    self.tableView.reloadData()
                })
            })
            task.resume()
        }
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let jsonData = self.json {
            if let articles = jsonData["new"] as? NSArray {
                println("the number of articles from json is: \(articles.count)")
                return articles.count
            }
        }
        // If jsonData is not created then we will return 0
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        if cell == nil  {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        }
        if let jsonData = self.json {
            if let articles = jsonData["new"] as? NSArray {
                if let article = articles[indexPath.row] as? NSDictionary {
                    let articleTitle = article["title"] as NSString
                    cell.textLabel?.text = articleTitle
                }
            }
        }
        return cell
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let jsonDict = self.json {
            if let articles = jsonDict["new"] as? NSArray {
                if let article = articles[indexPath.row] as? NSDictionary {
                    if let link = article["link"] as? NSString {
                        var url = NSURL(string: link)
                        performSegueWithIdentifier("articleLink", sender: NSURLRequest(URL: url!))
                    }
                }
            }
            
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
//            var permalink = jsonDict["data"]["children"][indexPath.row]["data"]["permalink"].string
//            var url = NSURL(string: "http://reddit.com" + permalink!)
//            performSegueWithIdentifier("web", sender: NSURLRequest(URL: url!))
        }
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let request = sender as? NSURLRequest {
            var destinationController = segue.destinationViewController as WebViewController
            destinationController.request = request
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

}
