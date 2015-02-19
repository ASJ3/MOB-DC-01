// Playground - noun: a place where people can play
// Lesson 05

import Foundation

// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times
func tenTimes() {
    for i in 1...10 {
    println("Hello World")
    }
}
tenTimes()

// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func hitLine(numTimes: Int) {
    for i in 1...numTimes{
        println("Hit this line \(i) times!")
    }
}
hitLine(20)


// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"
func newString(stringVal: String) {
    println("Hello \(stringVal)!")
    
}

newString("Alexis")


// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"
func optString(newString: String?=nil) {
    if let sureValue = newString {
        println("Hello \(sureValue)")
    }
    else {
        println("Hello World!")
    }
}

optString()



// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci
// sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.

func fib(n: Int) -> Int {
    var fibNum = n, current = 0, next = 1, result = 0
    for index in 0..<fibNum {
        let tempVar = current
        current = next
        next = tempVar + current
        result = tempVar
        
    }
    return result
}

var results = fib(0)
println("results are \(results)")


// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.
func addFib(numberTimes: Int) {
    var addResults = 0
    for i in 1...numberTimes {
        addResults += fib(i)
    }
    println("The sum of the first \(numberTimes) Fibonacci numbers is: \(addResults)")
}

addFib(20)


// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.
func testNumType (numTest: Int) {
    var latestDenominator = 0
    if numTest <= 1 {
        println( "Number \(numTest) is neither prime nor composite")
    } else {
        for i in 2...numTest {
            if numTest % i == 0  && numTest != i {
                latestDenominator = i
                break
            }
        }
            if latestDenominator != 0 {
                println("Number \(numTest) is composite and its smallest denominator is \(latestDenominator)")
            }
            else {
                println( "Number \(numTest) is prime")
            }
    }
}

testNumType(11)


// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)


func fibPrime(primeTest: Int) {
    for i in 1...primeTest {
        var numTest = fib(i)
        //println("the \(i) Fibonacci number is \(numTest)")
        var latestDenominator = 0
        if numTest <= 1 {
            println( "Fibonnaci #\(i): \(numTest) is not prime or composite")
        } else {
            for i in 2...numTest {
                if numTest % i == 0  && numTest != i {
                    latestDenominator = i
                    break
                }
            }
            if latestDenominator != 0 {
                println("Fibonnaci #\(i): \(numTest) is composite and its smallest denominator is \(latestDenominator)")
            }
            else {
                println( "Fibonnaci #\(i): \(numTest) is prime")
            }
        }

    }
}

fibPrime(20)




// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).
func tipCalc(bill: Float, tip: Float?)->(totalAmount: Float, tipAmount: Float?) {
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

var newRes = tipCalc(100, nil)

newRes.totalAmount



// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.
func inverseString(wordInput: String) ->String {
    var arrayResult: [String] = []
    for i in Array(wordInput) {
        arrayResult.insert(String(i), atIndex: 0)
    }
    return "".join(arrayResult)
}

var revString = "Hello everyone!"

inverseString(revString)


// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.
func searchString (arrayRef: [String], stringToSearch: String)->Bool {
    var answer = false
    for i in arrayRef {
        if i == stringToSearch {
            answer = true
            break
        }
    }
    return answer
}

var newArray = ["Hello", "Goodbye", "How are you?"]

searchString(newArray, "Good")
searchString(newArray, "Hello")


// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).
func checkPalindrome (stringChecked: String)->Bool {
    var stringLowered = stringChecked.lowercaseString
    var inversed = inverseString(stringLowered)
    if inversed == stringLowered {
        return true
    } else {
        return false
    }
    
}

checkPalindrome("noon")
checkPalindrome("ABBA")
checkPalindrome("Noon")
checkPalindrome("noone")

// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings are identical
func checkIdentical (string1: String, string2: String) {
    if string1 == string2 {
        println("The two strings are identical")
    } else {
        println("The two strings are different")
    }
    
}

checkIdentical("Alexis", "Alexis")


// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.

func addHello (inputString: String)->String {
    return "Hello " + inputString
}

addHello("Aurele")

func tenTimes (origString: String, inclFunc: String -> String) {
    for i in 1...10{
        println(inclFunc(origString))
    }
    
}

tenTimes("Aurelien", addHello)


