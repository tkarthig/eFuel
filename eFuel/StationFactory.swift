//
//  StationSelector.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 09/10/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import Foundation

protocol StationFactory {
    
    func createStation(object: Dictionary<String, AnyObject>) -> Station 
    
    
    
}
