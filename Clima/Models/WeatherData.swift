//
//  WeatherData.swift
//  Clima
//
//  Created by Cassia Franco on 22/06/21.
//  Copyright © 2021 Cassia Franco. All rights reserved.
//

import Foundation

struct WeatherData: Codable{
    let name: String
    let main: Main
    let weather: [Weather]
}
struct Main: Codable{
    let temp: Double
}
struct Weather: Codable{
    let description: String
    let id: Int
}
