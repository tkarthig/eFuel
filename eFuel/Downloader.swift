//
//  Downloader.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 15/10/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import Foundation
import Alamofire

class Downloader {

    
    
    //Function to download JSON response
    public static func downloadStations(completed: DownloadComplete) -> Dictionary<String, AnyObject> {
        let stationsURL = URL(string : CURRENT_URL)!
        print(CURRENT_URL)
        var output = Dictionary<String, AnyObject> ()
        
        Alamofire.request(stationsURL, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: nil)
            .responseJSON { response in
                
                let dict = response.result.value as! Dictionary<String, AnyObject>
                
        
                output = dict
                print (output)
              
                
          
        }//End of responseJSON
        completed()
          
       return output
    }
    
    
    
    public static func getOrders(completionHandler: @escaping (Dictionary<String, AnyObject>?, Error?) -> ()) {
        makeCall("Sat", completionHandler: completionHandler)
    }
    
    
    public static func makeCall(_ section: String, completionHandler: @escaping (Dictionary<String, AnyObject>?, Error?) -> ()) {
       let stationsURL = URL(string : CURRENT_URL)!
        print(stationsURL)
        
       Alamofire.request(stationsURL, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: nil)
            .responseJSON { response in
                switch response.result {
                case .success(let value):
                    completionHandler(value as? Dictionary<String, AnyObject>, nil)
                case .failure(let error):
                    completionHandler(nil, error)
                }
               
        }
    }
    
    
    
    
    


}
    
    
    

