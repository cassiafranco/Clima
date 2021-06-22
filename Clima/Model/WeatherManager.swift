//
//  WeatherManager.swift
//  Clima
//
//  Created by Cassia Franco on 27/05/21.
//  Copyright © 2021 Cassia Franco. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=87e7e2e8e1298b0539df5f886e37b50c&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    func performRequest (urlString: String){
        
        if let url = URL(string: urlString) {

            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil{
                    print(error!)
                    return
                }
                if let safeData = data{
                    self.parseJSON(weatherData: safeData)
                }
            }

            task.resume()
        }
    }
    func parseJSON(weatherData: Data){
        let decoder = JSONDecoder()
        do{
            let decodeData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodeData.weather[0].description)
        }catch {
            print(error)
        }
        
    }
        
}
  
