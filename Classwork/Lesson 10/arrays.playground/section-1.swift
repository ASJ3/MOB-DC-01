// Playground - noun: a place where people can play

import UIKit

var myArray = [1, 4, 10,15, 20]

var secondArray: [Int] = []

var stringArray: [String] = []

myArray[2]

myArray.first!
myArray.last

secondArray.append(20)
secondArray

myArray.insert(100, atIndex: 2)
myArray.count

myArray.insert(50, atIndex: myArray.count - 1 )
myArray.isEmpty
stringArray.isEmpty

myArray.removeAtIndex(2)
myArray[1] = 40


for i in myArray {
    if i == 10 {
    println("bingo!")
    } else {
        println(i)
    }
}





