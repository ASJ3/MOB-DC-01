// Playground - noun: a place where people can play

import UIKit
import XCPlayground

// Let asynchronous code run
XCPSetExecutionShouldContinueIndefinitely()

// What comes back from an NSURL is an optional so you have to unwrap before you can use it
let url = NSURL(string: "http://google.com")

// This following line of code is to send a request to the server
let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, responses, error) -> Void in
println(data)
println(responses)
println(error)

})

task.resume()




