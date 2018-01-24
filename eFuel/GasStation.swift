//
//  GasStation.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 24/01/2018.
//  Copyright © 2018 Karthig.com. All rights reserved.
//

import UIKit
//import Alamofire

class GasStation : Station {
    
    var name: String
    var street: String
    var house_number: String
    var zipcode: String
    var city: String
    var chargingPoints: String
    var positionLatitude: String
    var positionLongitude: String
    var car: Car?
    
    
    
    required init(station: Dictionary<String, AnyObject>) {
        
        self.name = ""
        self.street=""
        self.house_number=""
        self.zipcode=""
        self.city=""
        self.chargingPoints=""
        self.positionLatitude=""
        self.positionLongitude=""
      
        
        if let station = station["csmd"] as? Dictionary<String, AnyObject> {
            if let _name = station["name"] as? String {
                self.name=_name
            }
            if let position = station["Position"] as? String {
                let delimiter = ","
                var token = position.components(separatedBy: delimiter)
                self.positionLatitude = token[0].replacingOccurrences(of: "(", with: "")
                self.positionLongitude = token[1].replacingOccurrences(of: ")", with: "")
            }
            if let _street = station["Street"] as? String {
                self.street=_street
            }
            if let _house_number = station["House_number"] as? String {
                self.house_number=_house_number
            }
            if let _zipcode = station["Zipcode"] as? String {
                self.zipcode=_zipcode
            }
            if let _city = station["City"] as? String {
                self.city=_city
            }
            if let _chargingPoints = station["Number_charging_points"] as? Int{
                self.chargingPoints=String(_chargingPoints)
            }
        }
        
        
        
        
        
        
        /*----------------------------------------------------------------------------------------------------
         Constructor to set the variables
         -----------------------------------------------------------------------------------------------------*/
        /*
         
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
         if let street = station["Street"] as? String {
         _street=street
         }
         if let house_number = station["House_number"] as? String {
         _house_number=house_number
         }
         if let zipcode = station["Zipcode"] as? String {
         _zipcode=zipcode
         }
         if let city = station["City"] as? String {
         _city=city
         }
         if let chargingPoints = station["Number_charging_points"] as? Int{
         _chargingPoints=String(chargingPoints)
         }
         
         }
         
         */
    }
    
}//End main class


