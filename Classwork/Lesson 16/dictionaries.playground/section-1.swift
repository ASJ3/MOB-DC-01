// Playground - noun: a place where people can play

import UIKit

var wayneGretzgy = ["first_name": "Wayne","last_name": "Gretzgy", "team":"Capitals"]

wayneGretzgy["first_name"]

if let wayneName = wayneGretzgy["first_name"] {
    println(wayneName)
}

// Best practice for dictionary: have value names as strings
var ena: [String: Int] = [:]

// set values in dictionary
ena["legs"] = 4
ena["eyes"] = 2
ena

// getting a value to 'nil' will remove that value
//ena["eyes"] = nil
ena.removeValueForKey("eyes")
//ena

ena["paws"] = 4

for (key, value) in ena {
    println("ean has \(value) \(key)")
}

for enaKey in ena.keys {
    println(enaKey)
}

for enaValue in ena.values {
    println(enaValue)
}

var articles = [
    ["title": "Ena breaks tail", "date": "02/23/15", "author": "tedi"],
    ["title": "MOB class does core data", "date": "02/25/15", "author": "Arthur"]
]

articles[1]["title"]!

for article in articles {
    println(article["title"]!)
}

