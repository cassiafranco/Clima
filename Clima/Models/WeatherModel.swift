//
//  WeatherModel.swift
//  Clima
//
//  Created by Cassia Franco on 24/06/21.
//  Copyright © 2021 Cassia Franco. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
         case 200...232:
             return "cloud.bolt"
         case 300...332:
             return "cloud.drizzle"
         case 500...532:
             return "cloud.rain"
         case 600...632:
             return "cloud.snow"
         case 701...781:
             return "cloud.fog"
         case 800:
             return "sun.max"
         case 801...804:
             return "cloud.bolt"
         default:
             return "cloud"
    }
    
    }
}
