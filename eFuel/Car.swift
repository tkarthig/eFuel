//
//  Car.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 24/01/2018.
//  Copyright © 2018 Karthig.com. All rights reserved.
//

import Foundation

protocol Car {
    
    var name : String {get set}
    var type : String {get set}
    var model : String {get set}
    
    init(name: String, type:String, model:String)
    


}
