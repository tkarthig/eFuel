//
//  StationCell.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 28/01/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit
import CoreLocation

class StationCell: UITableViewCell {

    
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationDistance: UILabel!
    
    func configureCell(station: Station) {
        stationName.text =  station.name
        let stationLocation = CLLocation(latitude: Double(station.positionLatitude)!, longitude: Double(station.positionLongitude)!)
        let currentLocation = CLLocation (latitude: Location.sharedInstance.latitude, longitude: Location.sharedInstance.longitude)
        let distanceInKmeters = stationLocation.distance(from: currentLocation) / 1000
        stationDistance.text=String(format:"%.2f",distanceInKmeters) + " KM"
    }

}
