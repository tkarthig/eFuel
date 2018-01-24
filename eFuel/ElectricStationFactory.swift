//
//  ElectricStationFactory.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 24/01/2018.
//  Copyright © 2018 Karthig.com. All rights reserved.
//

import Foundation

class  ElectricStationFactory : StationFactory {
  
    
    func createStation(object: Dictionary<String, AnyObject>) -> Station{
        let electricStation = ElectricStation(station: object)
        return electricStation
    }
    

    
    
}
