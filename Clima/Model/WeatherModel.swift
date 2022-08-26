//
//  WeatherModel.swift
//  Clima
//
//  Created by Oliver Lauridsen on 26/08/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    
    // Stored properties
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    
    // Computed property
    var temperatureString: String {
        return String(format:"%.01f", temperature)
    }
    
    // Computed property
    var conditionName: String {
        switch conditionID {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud"
        default:
            return "cloud"
        }
        
    }
    
}
