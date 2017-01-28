//
//  ViewController.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 15/01/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tabelView: UITableView!
    @IBOutlet weak var name: UILabel!
    
   
    var station : Station!
    var stations : [Station]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelView.delegate = self
        tabelView.dataSource=self
        
        stations = [Station]()
        
        

        
        
         
         self.downloadStations {
         
            print("Test_first")
         }
        
        
    
       
        
    }//End viewDidLoad()
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stationCell", for: indexPath)
        return cell
        
    }
    

    
    
    
    //Functions to help
    
    
    
    
    
    //Function to download JSON response
    func downloadStations(completed: DownloadComplete)  {
        let stationsURL = URL(string : CURRENT_URL)!
        
        Alamofire.request(stationsURL, method: .post, parameters: nil, encoding: JSONEncoding.default, headers: nil)
            .responseJSON { response in
                
                if let dict = response.result.value as? Dictionary<String, AnyObject> {
                    if let stations = dict["chargerstations"] as? [Dictionary<String, AnyObject>] {
                        for object in stations {
                            let station = Station(station: object)
                            self.stations.append(station)
                            print(station.name)
                    
                            
                        }
                        
                        
                        
                    }
                    
                }
                
                
                
                
      
                    
                    
            }//End of responseJSON
        completed()
    }
    

    
    
    
    


}

