//
//  StationCell.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 28/01/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit

class StationCell: UITableViewCell {

    
    @IBOutlet weak var stationName: UILabel!
    
    
    func configureCell(station: Station) {
        stationName.text =  station.name
        
    }



}
