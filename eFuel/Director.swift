//
//  Director.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 24/01/2018.
//  Copyright © 2018 Karthig.com. All rights reserved.
//

import Foundation

class Director {
    
    var builder : Builder!
    var station : Station!
    
    func constructStation (builder: Builder) {
        self.builder = builder
    }
    
    func getStation() -> Station {
        return self.builder.buildPart()
    }
    
    
}
