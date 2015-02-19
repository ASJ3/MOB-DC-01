// Playground - noun: a place where people can play

import UIKit


// Defining a class requires we name the class with an initial capital letter
class Animal {
    var numberOfLegs: Int
    var hasFur = false
    var noise = "AAAAAH"
    
    init(numberOfLegs: Int, hasFur: Bool) {
        self.numberOfLegs = numberOfLegs
        self.hasFur = hasFur
    }
    
    func speak() {
        println(self.noise)
        
    }
}

// Instantiating a new class (called an instance/object)
var tedi = Animal(numberOfLegs: 2, hasFur: false)
tedi.hasFur = false

tedi.numberOfLegs = 2

println(tedi.numberOfLegs)

var ena = Animal(numberOfLegs: 4, hasFur: true)
ena.hasFur = true
ena.numberOfLegs = 4


