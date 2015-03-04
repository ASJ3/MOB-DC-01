// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var arrayOne = ["hello", "goodbye"]
var arrayTwo = ["super", "duper"]
var newDictionary = ["firstArray": arrayOne, "secondArray": arrayTwo]

var newOne = newDictionary["firstArray"]



newOne![0]

newDictionary["firstArray"]![0]

var oneD = ["firstkey": "firstvalue", "secondKey": "secondValue"]
var twoD = ["1key": "1value", "2Key": "2Value"]


var finalD: NSDictionary? = ["firstDict": oneD, "secondDict": twoD]

var newDict = finalD!["firstDict"] as NSDictionary

for (key, value) in  newDict {
    
    println("the key is \(key) and the value is \(value)")
}


finalD!["firstDict"]!.count
newDictionary["firstArray"]


