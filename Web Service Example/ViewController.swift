//
//  ViewController.swift
//  Web Service Example
//
//  Created by Jose Andrade-Sinning on 11/3/15.
//  Copyright © 2015 Timeplify, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forecastLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let manager = AFHTTPRequestOperationManager()
        
        manager.GET( "http://api.openweathermap.org/data/2.5/forecast/daily?q=London&mode=json&units=metric&cnt=1", parameters: nil,
            success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                print("Response: " + responseObject.description)
            },
            failure: { (operation: AFHTTPRequestOperation?,error: NSError) in
                print("Error: " + error.localizedDescription)
        })
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

