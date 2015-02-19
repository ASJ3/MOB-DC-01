// Playground - noun: a place where people can play

import UIKit

protocol Flight {
    var wings: Bool { get set }
    var beakSize: Int { get set }
    
    
}

protocol Talk {
    
    func speak() -> String
}

class Penguin: Flight {
    var wings = true
    var beakSize = 6
}


class Animal {
    var legs: Int
    var fur: Bool = true
    var hasClaws: Bool
    
    init(hasClaws: Bool) {
        self.hasClaws = hasClaws
        self.legs = 4
        println("Hello there")
    }
    
    func speak() {
        println("Hello World!")
    }
}

class Dog: Animal {
    
    override var fur: Bool {
        get {
            //return whatever the fur variable is set as
            return super.fur
        }
        set {
            // override the inherited property to the new value set by the sub class
            super.fur = newValue
        }
    }
    
    override func speak() {
        println("Woof woof")
    }
    
}

class Human: Animal, Talk {
    func speak() -> String {
        return "Hello World"
    }
    
}


var tedi = Animal(hasClaws: true)

var ena = Dog(hasClaws: true)
var skippy = ena

ena.legs
skippy.legs = 5
ena.legs

ena.speak()

struct Rectangle {
    var width: Int
    var height: Int
    
    func getArea() -> Int {
        return width * height
        
    }
}

let myRectangle = Rectangle(width: 50, height: 100)
var myOtherRect = myRectangle
myOtherRect.width = 70
myRectangle.width

myRectangle.getArea()


