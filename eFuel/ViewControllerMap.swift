//
//  ViewControllerMap.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 31/03/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit
import MapKit

class ViewControllerMap: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
