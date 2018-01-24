//
//  Station.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 22/01/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit
import Alamofire

protocol Station {
    
    var name : String {get set}
    var street : String {get set}
    var house_number : String {get set}
    var zipcode : String {get set}
    var city : String {get set}
    var chargingPoints : String {get set}
    var positionLatitude : String {get set}
    var positionLongitude : String {get set}
    var car : Car? {get set}
    
    init(station: Dictionary<String, AnyObject>)

   
    
}//End main class
