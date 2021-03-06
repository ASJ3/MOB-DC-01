// Lesson 04 playground

import Foundation

// TODO: Create two variables, name and age. Name is a string, age is an integer.
var Name: String
var age: Int = 25

Name = "Alexis"

// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"

println("Hello \(Name), you are \(age)")


// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”

if age > 21 {
    println("You can drink")
} else if age > 18 {
    println("you can vote")
} else if age > 16 {
    println("You can drive")
}


// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
if age > 16 && age < 18 {
    println("you can drive")
} else if age > 18 && age < 21 {
    println("You can drive and vote")
} else if age >= 21 {
    println("you can drive, vote and drink (but not at the same time!")
}


// TODO: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)
var multiple = 0

for i in 1...50 {
    multiple = 7 * i - 1
    println(multiple)
}

// TODO: Create a constant called number
let number: Int = 9

// TODO: Print whether the above number is even
if number % 2 == 0 {
    println("number is even")
} else {
    println("number is uneven")
}

// TODO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below
var x1Num = 0
var x2Num = 1

var newNum: Int = 0
for i in 3...37 {
    newNum = x1Num + x2Num
    //println("The Fibonacci number at index \(i) is: \(newNum)")
    x1Num = x2Num
    x2Num = newNum
}
println("the 37th Fibonacci number is: \(newNum)")


var fibNum = 9, current = 0, next = 1, result = 0

for index in 0..<fibNum {
    let tempVar = current
    current = next
    next = tempVar + current
    result = tempVar
    
}
println("the Fibonnaci number \(fibNum) is \(result)")



// TODO: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()
println("Hello \(Name), your name is \(countElements(Name)) characters long!")

// TODO: Print the sum of one hundred random numbers. Use rand() to generate random numbers.
var randomNum: Int32
var addition = 0

for i in 1...100 {
    randomNum = rand()
    addition += Int(randomNum)
    //println(randomNum)
}
println(addition)

// Bonus TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.
for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        println("FizzBuzz")
    } else if i % 3 == 0 {
        println("Fizz")
    } else if i % 5 == 0 {
        println("Buzz")
    } else {
       println(i)
    }
}






