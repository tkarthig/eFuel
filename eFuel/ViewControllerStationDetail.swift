//
//  ViewControllerStationDetail.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 26/07/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit

class ViewControllerStationDetail: UIViewController, DataSendDelegate{
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var street: UILabel!
    @IBOutlet weak var house_number: UILabel!
    @IBOutlet weak var zipcode: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var latitude: UILabel!
    @IBOutlet weak var longitude: UILabel!
    @IBOutlet weak var chargingPoints: UILabel!
    
    
    
    
    
    func userDidSelectRow(station: Station) {
     
        name.text=station.name
        street.text=station.street
        house_number.text=station.house_number
        zipcode.text=station.zipcode
        city.text=station.city
        latitude.text=station.positionLatitude
        longitude.text=station.positionLongitude
        chargingPoints.text=station.chargingPoints
    }


  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func finishedLooking(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
        
        
        
    }

}
