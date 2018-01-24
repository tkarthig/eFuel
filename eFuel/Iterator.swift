//
//  Iterator.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 24/01/2018.
//  Copyright © 2018 Karthig.com. All rights reserved.
//

import Foundation

protocol Iterator {
    
    
    var dict : Any {get set}

    func hasNext()
    func next()
    init (list: Any)

}
