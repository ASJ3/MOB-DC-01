//
//  ViewController.swift
//  AnimalApp
//
//  Created by Alexis Saint-Jean on 1/14/15.
//  Copyright (c) 2015 Alexis Saint-Jean. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createCat(sender: AnyObject) {
        var cat = Animal()
        cat.species = "Cat"
        cat.name = "Garfield"
        
        resultsField.text = cat.stringRepresentation()
    }
    
    @IBAction func createDog(sender: AnyObject) {
        var cat = Animal()
        cat.species = "Dog"
        cat.name = "Snoopy"
        
        resultsField.text = cat.stringRepresentation()
        
    }

    @IBOutlet weak var nameSetting: UITextField!
    @IBOutlet weak var speciesSetting: UITextField!
    
    @IBAction func animalSetting(sender: AnyObject) {
        var newAnimal = Animal()
        newAnimal.species = speciesSetting.text
        newAnimal.name = nameSetting.text
        
        resultsField.text = newAnimal.stringRepresentation()
    }
    
    @IBOutlet weak var resultsField: UITextField!
}

