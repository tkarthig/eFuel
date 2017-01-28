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
    let NORTHEST="(60.27513309999999,11.179013199999986)"
    let SOUTHWEST="(60.2514115,11.202181999999993)"


    typealias DownloadComplete = ()->()


    let CURRENT_URL = "\(BASE_URL)apikey=\(API_KEY)&apiversion=\(API_VERSION)&action=\(ACTION)&type=\(TYPE)&northeast=\(NORTHEST)&southwest=\(SOUTHWEST)"


