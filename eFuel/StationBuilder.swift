//
//  StationBuilder.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 15/10/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import Foundation


class StationBuilder:Builder {
    
    var station : Station!
    
    init(station: Station) {
        self.station = station
    }
    
    
    func buildPart() -> Station {
        return station
    }
    

}
