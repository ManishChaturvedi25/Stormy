//
//  CurrentWeatherViewModel.swift
//  Stormy
//
//  Created by Manish Chaturvedi on 4/21/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeatherViewModel {

    let temperature: String
    let humidity: String
    let precipitationProbablity: String
    let summary: String
    let icon: UIImage
    
    init(model :CurrentWeather) {
        let roundedTemp  = Int(model.temperature)
        self.temperature = "\(roundedTemp)º"
        
        let humiditityPercentValue  = Int( model.humidity * 100)
        self.humidity = "\(humiditityPercentValue)%"
        
        let precipPercentValue = Int(model.precipitationProbablity * 100)
        self.precipitationProbablity = "\(precipPercentValue)%"
        
        let weatherIcon = WeatherIcon(iconString: model.icon)
        self.icon = weatherIcon.image
        
        self.summary = model.summary
    }
}
