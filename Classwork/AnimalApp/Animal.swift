//
//  Animal.swift
//  AnimalApp
//
//  Created by Alexis Saint-Jean on 1/14/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import Foundation

class Animal {
    var species = ""
    var name = ""
    
    func stringRepresentation()-> String {
        return "The animal is a \(self.species) species, its name is \(self.name)"
    }
    
}
