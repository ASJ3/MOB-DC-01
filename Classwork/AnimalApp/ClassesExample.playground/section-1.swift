// Playground - noun: a place where people can play

import UIKit

class Animal {
// When an object of the Animal class is created two properties are createdw ith default values
    var legs = 0
    var name = ""

// a speak method is also created when an Animal object is istanciated
    func speak() {
        println("AHHHH")
    }
    
    //        var legs: Int
    //        var name = ""
    //        init(legs: Int, name: String) {
    //            self.legs = legs
    //            self.name = name
    //        }
    
    //    func stringRepresentation()-> String {
    //        return "The animal is a \(self.species) species, its name is \(self.name)"
    //    }
}


class Dog: Animal {
// The Dog class is a subclass of the Animal class so it inherits the properties and methods of class
// In addition the Dog class adds one property of its own: isSmart, which is a boolean
    var isSmart = true
    
// The Dog class overrides the speak method of Animal by printing "Woof!" instead of "AHHHH"
    override func speak() {
        println("Woof!")
    }

// The Dog class also changes the default value for legs
// In the Animal class, the value for legs is set at 0 by default but we want it to be 4 instead
// To change the value of the 'legs' property we need to override the init method 
// In our override, first we are going to call the init() of the super class of Dog (i.e. the Animal class)
// By doing so we are creating the legs and name properties, which get set to the default values set in Animal
// Now that those properties are created, we can change their default value simply by using 'self.PROPERTY = NEW_VALUE'
    override init() {
        super.init()
        self.legs = 4
    }
    
    //        override init(legs: Int, name: String) {
    //            super.init(legs: 4, name: "Milou")
    //        }
    
    //    init(legs:Int, name:String, isSmart:Bool) {
    //        self.isSmart = isSmart
    //
    //        super.init(legs: legs, name: name)
    //    }
    

}

//var doggie = Dog(legs: 4, name:"Ena")
var doggie = Dog()
doggie.speak()


//    func printAnimalName(animal: Animal) {
//        println("Animal's name is \(animal.name)")
//    }
//
//
//var doggie = Animal()
//
//doggie.name = "Ena"
//
//printAnimalName(doggie)

var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
// background color is an object property
// UIColor purpleColor
view.backgroundColor = UIColor.purpleColor()






