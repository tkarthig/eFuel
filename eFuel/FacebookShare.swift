//
//  FacebookShare.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 24/01/2018.
//  Copyright © 2018 Karthig.com. All rights reserved.
//

import Foundation

class FacebookShare: Share {
    
    override init(station: Station)
    {
        super.init(station: station)
        
    }

    override func prepare() {
         print ("Preparing Facebook share");
    }
    
    override func setSocialMediaType() {
        print ("Setting social media type to Facebook");
    }
    
    override func setSocialMediaAPI() {
        print ("Setting Facebook API");
    }
    
    
    
    
}
