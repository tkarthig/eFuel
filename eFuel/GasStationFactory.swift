//
//  GasStationFactory.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 24/01/2018.
//  Copyright © 2018 Karthig.com. All rights reserved.
//

import Foundation

class  GasStationFactory : StationFactory {
    
    
    func createStation(object: Dictionary<String, AnyObject>) -> Station{
        let electricStation = GasStation(station: object)
        return electricStation
    }
    
    
    
    
}

