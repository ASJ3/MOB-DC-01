// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var newView = UIView(frame: CGRect(x: 1.0, y: 1.0, width: 100, height: 100))

newView.backgroundColor = UIColor.redColor()

//var timer = NSTimer(timeInterval: NSTimeInterval(1.0), target: newView , selector: "blink:", userInfo: nil, repeats: true )
//var timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: newView , selector: "blink:", userInfo: nil, repeats: true)

var blinkStatus = false

func blink() {
    if blinkStatus == false {
        newView.backgroundColor = UIColor.blueColor()
        println("1st if")
        blinkStatus = true
    } else {
        newView.backgroundColor = UIColor.yellowColor()
        println("2nd if")
        blinkStatus = false
    }
    
}

blink()
blink()

