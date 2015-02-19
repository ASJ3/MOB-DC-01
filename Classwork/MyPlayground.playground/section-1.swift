// Playground - noun: a place where people can play

import UIKit

func hello() {
    println("Hello world")
    
}

hello()

func sum(firstNum: Int, secondNum: Int) -> Int {
    let newSum = firstNum + secondNum
    return newSum
    
}

var x = sum(10,20)
var y = sum(x,15)

func fib(fibPlace place: Int) -> Int {
    var fibNum = place, current = 0, next = 1, result = 0
    for index in 0..<fibNum {
        let tempVar = current
        current = next
        next = tempVar + current
        result = tempVar
        
    }
 return result
}

fib(fibPlace:9)
fib(fibPlace:23)
fib(fibPlace:30)


func save(name: String) -> (first: String, last:String) {
    var firstName = name
    var lastName = "Konda"
    return(firstName, lastName)
}

var myName = save("Tedi")
myName.first
myName.last

