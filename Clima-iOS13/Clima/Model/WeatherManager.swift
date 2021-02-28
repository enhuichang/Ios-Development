//
//  WeatherManager.swift
//  Clima
//
//  Created by Enhui Zhang on 27/2/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

protocol WeatherManagerDelegate {
    func didUpdateWeather(weather:WeatherModel)
}
struct WeatherManager{
    
    let weatherURL="https://api.openweathermap.org/data/2.5/weather?appid=e4a4150e144478eb9c08526df074bc41&units=metric"
    
    var delegate:WeatherManagerDelegate?
    
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
                    if let weather = parseJson(weatherData: safeData){
                        delegate?.didUpdateWeather(weather: weather)
                    }
                }
            }
            task.resume()
        }
        
    }
    func parseJson(weatherData:Data)->WeatherModel?{
        let decoder=JSONDecoder()
        do{
           let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp=decodedData.main.temp
            let name=decodedData.name
            
            let weather=WeatherModel(conditionId: id, cityName: name, temperature: temp)
           return weather
            
        }catch{
            print(error)
            return nil
        }
    }
    

    
}
