//
//  Constants.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 16/01/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import Foundation



    let BASE_URL = "https://nobil.no/api/server/search.php?"
    let API_KEY="cd4940380eaee58fe2f84ef3d66dd572"
    let API_VERSION="3"
    let ACTION="search"
    let TYPE="rectangle"
    let DISTANCE_KM = 10.0
    let NORTHEST_LAT : Double = Location.sharedInstance.latitude  + (DISTANCE_KM / 6371)
    let NORTHEST_LONG : Double = Location.sharedInstance.longitude + (DISTANCE_KM / 6371 / cos((Location.sharedInstance.latitude * M_PI / 180.0))) * 180 / M_PI
    let SOUTHWEST_LAT : Double = Location.sharedInstance.latitude  - (DISTANCE_KM / 6371)
    let SOUTHWEST_LONG : Double = Location.sharedInstance.longitude - (DISTANCE_KM / 6371 / cos((Location.sharedInstance.latitude * M_PI / 180.0))) * 180.0 / M_PI
    let NORTHEST = "(" + String(NORTHEST_LAT) + "," + String(NORTHEST_LONG) + ")"
    let SOUTHWEST = "(" + String(SOUTHWEST_LAT) + "," + String(SOUTHWEST_LONG ) + ")"
    let CURRENT_URL = "\(BASE_URL)apikey=\(API_KEY)&apiversion=\(API_VERSION)&action=\(ACTION)&type=\(TYPE)&northeast=\(NORTHEST)&southwest=\(SOUTHWEST)"
    typealias DownloadComplete = ()->()

