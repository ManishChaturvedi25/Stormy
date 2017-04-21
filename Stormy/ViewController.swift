//
//  ViewController.swift
//  Stormy
//
//  Created by Manish Chaturvedi on 4/21/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentHumidityLabel: UILabel!
    @IBOutlet weak var currentPrecipitationLabel: UILabel!
    @IBOutlet weak var currentWeatherIcon: UIImageView!
    @IBOutlet weak var currentSummaryLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    fileprivate let darkSkyAPIkey = "1c9143f651619d0ce2902acce76c65b4"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let base = URL(string: "https://api.darksky.net/forecast/\(darkSkyAPIkey)/")
      //  let location =  // Provide your location here
        
        let foreCastUrl = URL(string:"37.8267,-122.4233", relativeTo:base)
        
        let weatherData = try! Data(contentsOf: foreCastUrl!)
        
        print(weatherData as NSData)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

