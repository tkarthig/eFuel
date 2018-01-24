//
//  StationSelector.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 09/10/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import Foundation

class StationFactory{
    
    class func selectStation (station: Dictionary<String, AnyObject>) -> Station {
        let builder = StationBuilder()
        
        return builder.createElecticStation(station:station)
        
        //return ElectricStation (station: station)
        
    }
    
}
