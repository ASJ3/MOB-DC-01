// Playground - noun: a place where people can play

import UIKit

class Animal {
    var name = "Animal"
    var fur = true
    
    init(name:String){
        self.name = name
    }
    
}

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

0 % 2
1 % 2
2 % 2

var dog = Animal(name:"Picthoune")
dog.fur
dog.name

var dog2 = Animal(name: "Bobby")

var dog3 = Animal(name: "Laika")


var emptyDictionary = [String: Int]()

emptyDictionary = ["hello":5, "yes":3, "good":4]
emptyDictionary["hello"]

for (word, number) in emptyDictionary {
    println("\(word): \(number)")
    
}

//
//newDictionary = [dog: 1, dog2: 2, dog3: 3]
//
//for (kind, number) in newDictionary {
////    println(newDictionary[kind].name)
//    println("\(number)")
//}












