//
//  ViewController.swift
//  ARC-RetainCycle-MemoryLeak
//
//  Created by Arturs Vitins on 21/09/2018.
//  Copyright © 2018 Arturs Vitins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var me: Person?
    
    var latvia: Country?
    var liepaja: City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //EXAAAMPLE 1

        // example for object with one strong reference
        print("\n ---Example 1 starts--- \n")
        exampleOk()
        print("\n ---Example 1 ends--- \n")
        
        //EXAAAMPLE 2
        //exampe retain cycle with two objects pointing to each other
        print("\n ---Example 2 starts--- \n")
        exampleRetainCycle()
        print("\n ---Example 2 ends--- \n")

    }

    // example for object with one strong reference
    func exampleOk () {
        // create (init) one object with one strong refrence
        me = Person(name: "workerlv")
        
        // deinit
        me = nil
    }
    
    //example retain cycle
    func exampleRetainCycle () {
        
        latvia = Country(name: "LV", hasCity: liepaja)
        liepaja = City(name: "LPL", inCountry: latvia)

        latvia = nil
    }
}
