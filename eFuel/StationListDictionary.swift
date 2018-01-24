//
//  StationListDictionary.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 24/01/2018.
//  Copyright © 2018 Karthig.com. All rights reserved.
//

import Foundation

class StationListDictionary : List {
    
    var list: Any
    
    init(list: [Dictionary<String, AnyObject>]) {
        self.list = list
    }
    
    
}
