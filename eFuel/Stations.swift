//
//  Stations.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 16/01/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit
import Alamofire


class Stations  {
    
    
    
    
    
    
    //Function to download JSON response
    func downloadStations(completed: DownloadComplete)  {
        let currentStationsURL = URL(string : CURRENT_URL)!
        Alamofire.request(currentStationsURL, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: nil)
            .responseJSON {
                response in
                //print (CURRENT_URL)
                //print(response.result.value as Any)   // result of response serialization
                let result = response.result
                
                if let dict = result.value as? Dictionary<String, AnyObject>{
                   
                    
                   // print(dict)
                    
                    //let provider = dict["Provider"] as? String
                    let name_temp = dict["chargerstations"] as? [Dictionary<String,AnyObject>]
                    //print (name_temp!)
                    
                    let name_temp2 = name_temp![0] as Dictionary<String, AnyObject>
                    
                  //  print(name_temp2)
                
                    let name_temp3 = name_temp2["csmd"] as? Dictionary<String, AnyObject>
                    
                    //print(name_temp3!)
                    
                    let name_temp4 = name_temp3!["name"] as! String
                    
                    print(name_temp4)
                    
                    
                    
                }
                
                
                
            }
        
                completed()
    }












}
