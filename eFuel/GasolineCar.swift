//
//  GasolineCar.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 24/01/2018.
//  Copyright © 2018 Karthig.com. All rights reserved.
//

import Foundation

class GasolineCar : Car {
    
    
    var name: String
    var type: String
    var model: String
    
    
    
    required init(name: String, type:String, model:String) {
        
        self.name = name
        self.type = type
        self.model = model
        
        
    }
    
    
    
    
}
