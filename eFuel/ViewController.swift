//
//  ViewController.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 15/01/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tabelView: UITableView!
    var currentStations = Stations()
    
    @IBOutlet weak var name: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabelView.delegate = self
        tabelView.dataSource=self
        
        currentStations.downloadStations{
            
        }
         
    }
    
    
    
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
    
    
    func updateMainUI(){
        name.text=
        
        
        
        
    }
    
    
    


}

