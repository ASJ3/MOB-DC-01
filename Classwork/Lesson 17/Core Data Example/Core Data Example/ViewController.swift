//
//  ViewController.swift
//  Core Data Example
//
//  Created by Alexis Saint-Jean on 2/25/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    //BoilerPlate to make sure we can use core data because AppDelegate has CoreData
    var appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)

    override func viewDidLoad() {
        super.viewDidLoad()
        if let moc = self.appDelegate.managedObjectContext {
            var ena = NSEntityDescription.insertNewObjectForEntityForName("Animal", inManagedObjectContext: moc) as Animal
            ena.name = "ena"
            ena.numberOfLegs = 4
            ena.hasFurr = true
            ena.noise = "woof woof"
            
            appDelegate.saveContext()
            
        }
        
        
    }

    @IBAction func loadAnimalData(sender: AnyObject) {
        if let moc = self.appDelegate.managedObjectContext {
            let fetchAnimals = NSFetchRequest(entityName: "Animal")
            
            // what if we only want to get certain record in the data? see next two lines
            let animalPredicate = NSPredicate(format: "name contains %@", "e")
            fetchAnimals.predicate = animalPredicate
            
            if let animals: [Animal] = moc.executeFetchRequest(fetchAnimals, error: nil) as? [Animal] {
                for animal in animals {
                    println(animal.name)
                    println(animal.noise)
                }
            }
            
            
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

