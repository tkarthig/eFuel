//
//  ViewController.swift
//  eFuel
//
//  Created by Theepan Karthigesan on 15/01/2017.
//  Copyright © 2017 Karthig.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
     
        
        
let url = URL(string: "https://nobil.no/api/server/search.php?apikey=cd4940380eaee58fe2f84ef3d66dd572&apiversion=3&action=search&type=rectangle&northeast=(60.27513309999999,11.179013199999986)&southwest=(60.2514115,11.202181999999993)")
        
        
        
        let task = URLSession.shared.dataTask(with: url!) { data, response, error in
            guard error == nil else {
                print(error ?? "feil")
                return
            }
            guard let data = data else {
                print("Data is empty")
                return
            }
            
            let json = try! JSONSerialization.jsonObject(with: data, options: [])
            print(json)
        }
        
        task.resume()
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        print("Test")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

