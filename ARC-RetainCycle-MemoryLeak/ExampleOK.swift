//
//  ExampleOK.swift
//  ARC-RetainCycle-MemoryLeak
//
//  Created by Arturs Vitins on 21/09/2018.
//  Copyright © 2018 Arturs Vitins. All rights reserved.
//

import Foundation

class Person {
    
    let firstName: String
    
    
    init(name: String) {
        self.firstName = name
        
        print("init done for \(firstName)")
    }
    
    deinit {
        print("deinit done for \(firstName)")
    }
    
}
