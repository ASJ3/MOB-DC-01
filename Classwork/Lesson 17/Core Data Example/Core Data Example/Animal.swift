//
//  Animal.swift
//  Core Data Example
//
//  Created by Alexis Saint-Jean on 2/25/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import Foundation
import CoreData

@objc(Animal)

class Animal: NSManagedObject {
    @NSManaged var name: String
    @NSManaged var numberOfLegs: Int32
    @NSManaged var hasFurr: Bool
    @NSManaged var noise:String
    
}
