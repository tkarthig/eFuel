//
//  Station.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 22/01/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit
import Alamofire

class Station {
    
    var _name : String!
    var _street : String!
    var _house_number : String!
    var _zipcode : String!
    var _city : String!
    var _positionLatitude : String!
    var _positionLongitude : String!

    /*----------------------------------------------------------------------------------------------------
     Check the class variable for nil
     -----------------------------------------------------------------------------------------------------*/
    var name: String {
        
        if _name == nil {
            _name=""
        }
        return _name
    }
    
    var street : String {
        if _street == nil {
            _street = ""
            
        }
        return _street
    }
    
    var house_number : String {
        
        if _house_number == nil {
            _house_number = ""
            
        }
        return _house_number
    }
    
    var zipcode : String {
        
        if _zipcode == nil {
            _zipcode = ""
            
        }
        return _zipcode
    }
    
    var city : String {
        
        if _city == nil {
            _city = ""
            
        }
        return _city
    }
    
    var positionLatitude  : String {
        
        if _positionLatitude == nil {
            _positionLatitude = ""
            
        }
        return _positionLatitude
    }
    
    
    var positionLongitude  : String {
        
        if _positionLongitude == nil {
            _positionLongitude = ""
            
        }
        return _positionLongitude
    }
    
    /*----------------------------------------------------------------------------------------------------
     Constructor to set the variables
     -----------------------------------------------------------------------------------------------------*/
    init(station: Dictionary<String, AnyObject>) {
        
        if let station = station["csmd"] as? Dictionary<String, AnyObject> {
            if let name = station["name"] as? String {
                _name=name
            }
            if let position = station["Position"] as? String {
                let delimiter = ","
                var token = position.components(separatedBy: delimiter)
                _positionLatitude = token[0].replacingOccurrences(of: "(", with: "")
                _positionLongitude = token[1].replacingOccurrences(of: ")", with: "")
            }
            //if
        }
        
        
    }
    
}//End main class
