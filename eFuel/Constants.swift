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

    let NORTHEST="(62.27513309999999,13.179013199999986)"
   let SOUTHWEST="(60.2514115,11.202181999999993)"


//let NORTHEST_LANG : Double = (Location.sharedInstance.longitude / abs(cos((Location.sharedInstance.latitude * 180.0 / M_PI))) * 111)


/*
A point (LAT, LNG)
A distance or radius DIST
1° of latitude ~= 69 miles ~= 111 kms
1° of longitude ~= cos(latitude)*69 ~= cos(latitude)*111
The SW point is:

lng_sw = LNG - (DIST / abs(cos(radians(LAT))) * 111)
lat_sw = LAT - (DIST / 111)
The NE point is:

lng_ne = LNG + (DIST / abs(cos(radians(LAT))) * 111)
lat_ne = LAT + (DIST / 111)


*/




    //let NORTHEST="(37.785834,13.179013199999986)"
    //let SOUTHWEST="(60.2514115,11.202181999999993)"


    typealias DownloadComplete = ()->()


   let CURRENT_URL = "\(BASE_URL)apikey=\(API_KEY)&apiversion=\(API_VERSION)&action=\(ACTION)&type=\(TYPE)&northeast=\(NORTHEST)&southwest=\(SOUTHWEST)"
 
 


