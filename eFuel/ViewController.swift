//
//  ViewController.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 15/01/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var currentStations = Stations()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
 
        
        
        
        
        
        currentStations.downloadStations {
        
        }
 
 
 
 
 
 
 }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

