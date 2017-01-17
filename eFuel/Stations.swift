//
//  Stations.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 16/01/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit
import Alamofire


class Stations{


    func downloadStations(completed: DownloadComplete){
        let currentStationsURL = URL(string : CURRENT_URL)!

        
        Alamofire.request(currentStationsURL, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: nil)
            .responseJSON { response in
                
                print(currentStationsURL)
                //print(response.request as Any)  // original URL request
                //print(response.response as Any) // URL response
                //print(response.result.value as Any)   // result of response serialization
        }
        completed()
        
        
        
    
    }

}
