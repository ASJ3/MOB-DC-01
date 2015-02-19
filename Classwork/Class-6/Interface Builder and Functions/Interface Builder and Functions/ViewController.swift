import UIKit

class ViewController: UIViewController {

    // Functions of use for this exercise:
    // Translating a string to an integer: "1".toInt()
    // Getting the text from a text field: let text = textFieldName.text
    // Setting the text on a text label or text field: textLabelName.text = "some text"
    
    /*
    TODO: Create a text field, a label and a button in the storyboard's View Controller. Drag a new outlet from the label and text field to this file, then drag the 'touch up inside' event on the button into this file. When the button is clicked, make the text of the label display 'hello {whatever the text in the text field is}. Call an instructor/TA when you're done with this task.
    */
    
    /*
    TODO: Paste the fibonacci number function that you previously created into this class. Change the text box to use a numeric keypad for input. When the button is pressed, make the label print out the nth number in the fibonacci sequence (where n is the value of the text in the text field). Call an instructor/TA when you're done with this task.
    */
    
    /*
    TODO: Drag a new text field into the view controller, and create an outlet for it here. Make both text fields use the numeric keypad. One text field represents an optional tip percentage (in integer form, e.g 20 = 20% tip), the other represents the total amount of a bill. When the button is pressed, make the label display both the total amount and tip amount (e.g. "total: $100, tip: $15"). Call an instructor/TA when you're done with this task.
    */

    @IBOutlet weak var textFieldOne: UITextField!
    @IBOutlet weak var labelFieldOne: UILabel!
    @IBOutlet weak var textFieldTwo: UITextField!
    
//    @IBAction func changeTextLabel(sender: AnyObject) {
//        var fibonacciResult = fib(textFieldOne.text.toInt()!)
//        labelFieldOne.text = "the Fibonacci #\(textFieldOne.text) is \(fibonacciResult)"
//        
//    }
//    
//    func fib(n: Int) -> Int {
//        var fibNum = n, current = 0, next = 1, result = 0
//        for index in 0..<fibNum {
//            let tempVar = current
//            current = next
//            next = tempVar + current
//            result = tempVar
//            
//        }
//        return result
//    }
    
        @IBAction func changeTextLabel(sender: AnyObject) {
            var receit = Float(textFieldOne.text.toInt()!)
            var tippingAmount = Float(textFieldTwo.text.toInt()!)/100
            
            //            var tippingAmount: Float = 0.2
            
            var returnResult = tipCalc(bill: receit, tip: tippingAmount)
            labelFieldOne.text = "total: \(returnResult.totalAmount), tip: \(returnResult.tipAmount!)"
            
        }
    
    // TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).
    func tipCalc(#bill: Float, tip: Float?)->(totalAmount: Float, tipAmount: Float?) {
        var finalAmount: Float
        var finalTip: Float
        if let calcTip = tip {
            finalAmount = bill + calcTip * bill
            finalTip = tip!
            return (finalAmount, finalTip)
        }
        else {
            return(bill, nil)
        }
    }
    
    
}

