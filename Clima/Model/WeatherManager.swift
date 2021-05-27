//
//  WeatherManager.swift
//  Clima
//
//  Created by Cassia Franco on 27/05/21.
//  Copyright © 2021 Cassia Franco. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?appid=87e7e2e8e1298b0539df5f886e37b50c&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
