//
//  ExampleRetainCycle.swift
//  ARC-RetainCycle-MemoryLeak
//
//  Created by Arturs Vitins on 21/09/2018.
//  Copyright © 2018 Arturs Vitins. All rights reserved.
//

import Foundation

class Country {
    
    let countryName: String
    var cityName: City?
    
    init(name: String, hasCity: City?) {
        self.countryName = name
        self.cityName = hasCity
        print("init done for \(countryName)")
        
    }
    
    deinit {
        print("deinit done for \(countryName)")
    }
    
}

class City {
    
    let cityName: String
    var countryName: Country?

    // so Country could be released fromm memory weak reference must be used
    //weak var countryName: Country?
    
    init(name: String, inCountry: Country?) {
        self.cityName = name
        self.countryName = inCountry
        print("init done for \(cityName)")

    }
    
    deinit {
        print("deinit done for \(cityName)")
    }
    
}
