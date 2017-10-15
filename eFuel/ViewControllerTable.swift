//
//  ViewControllerTable.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 15/01/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit
import CoreLocation
import Alamofire

protocol DataSendDelegate {
    
    func userDidSelectRow (station: Station)

}

class ViewControllerTable: UIViewController, UITableViewDelegate, UITableViewDataSource, CLLocationManagerDelegate{
    
    
    @IBOutlet weak var tabelView: UITableView!
    
    let locationManager = CLLocationManager()
    var currentLocation: CLLocation!
    
    var station : Station!
    var stations : [Station]!
    var delegate : DataSendDelegate? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startMonitoringSignificantLocationChanges()
        locationAuthStatus()
        
        self.stations = [Station]()
        tabelView.delegate = self
        tabelView.dataSource=self
        
        self.downloadStations {
           
         }
    }/*End viewDidLoad()*/
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Tester"{
            
            let receiveingVC : ViewControllerStationDetail = segue.destination as! ViewControllerStationDetail
            self.delegate = receiveingVC
    }
    
            
    }
    
    
    /*----------------------------------------------------------------------------------------------------
     Location related functions
     -----------------------------------------------------------------------------------------------------*/
    
    func locationAuthStatus() {
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            currentLocation = locationManager.location
            Location.sharedInstance.latitude = currentLocation.coordinate.latitude
            Location.sharedInstance.longitude = currentLocation.coordinate.longitude
            
        } else {
            locationManager.requestWhenInUseAuthorization()
            locationAuthStatus()
        }
        
    }
    
    /*----------------------------------------------------------------------------------------------------
     Table view related functions
     -----------------------------------------------------------------------------------------------------*/
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "stationCell", for: indexPath) as? StationCell {
            let station = stations[indexPath.row]
            cell.configureCell(station: station)
            return cell
        } else {
            return StationCell()
        } 
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = stations[indexPath.row] as Station
        delegate?.userDidSelectRow(station: selectedItem)
        
        print (Location.sharedInstance.latitude,Location.sharedInstance.longitude )
        print(NORTHEST,SOUTHWEST)
    }
    /*----------------------------------------------------------------------------------------------------
     Other functions
     -----------------------------------------------------------------------------------------------------*/
    //Function to download JSON response
    func downloadStations(completed: DownloadComplete)  {
        let stationsURL = URL(string : CURRENT_URL)!
        print(CURRENT_URL)
        
        Alamofire.request(stationsURL, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: nil)
            .responseJSON { response in
                
                if let dict = response.result.value as? Dictionary<String, AnyObject> {
                    if let stations = dict["chargerstations"] as? [Dictionary<String, AnyObject>] {
                        for object in stations {
                            let station = StationFactory.selectStation(station: object)
                            self.stations.append(station)
                            
                        }
                        self.tabelView.reloadData()
                    }
                    
                }
            }//End of responseJSON
        completed()
    }
}/*End main class*/
