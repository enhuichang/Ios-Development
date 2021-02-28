//
//  WeatherManager.swift
//  Clima
//
//  Created by Enhui Zhang on 27/2/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
struct WeatherManager{
    
    let weatherURL="https://api.openweathermap.org/data/2.5/weather?appid=e4a4150e144478eb9c08526df074bc41&units=metric"
    
    func fetchWeather(cityName:String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString:String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task =  session.dataTask(with: url) { (data, resposnse, error) in
                if error != nil {
                    print (error!)
                    return
                }
                if let safeData = data{
                    let dataString = String(data:safeData,encoding: .utf8)
                    print(dataString)
                }
            }
   
            task.resume()
        }
        
    }

    
}
