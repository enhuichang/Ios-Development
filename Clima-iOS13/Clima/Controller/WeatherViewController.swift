//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController,CLL{

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    var weatherManager=WeatherManager()
    let locationManager=CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        
        searchTextField.delegate = self
        weatherManager.delegate=self
    }


    

}

//MARK: - UITextFiledDelegate
extension WeatherViewController:UITextFieldDelegate{
    @IBAction func searchPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        //Use search textField.text to get the weather for that city
        if let city=searchTextField.text{
            weatherManager.fetchWeather(cityName: city)
        }
        searchTextField.text=""
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
        }else {
            textField.placeholder = "Type something"
            return false
        }
    }
}
//MARK: - WeatherManagerDelegate
extension WeatherViewController:WeatherManagerDelegate{
    func didUpdateWeather(_ weatherManager:WeatherManager,weather:WeatherModel)  {
        DispatchQueue.main.async {
            self.temperatureLabel.text=weather.temperatureString
            self.conditionImageView.image=UIImage(systemName: weather.conditionName)
        }
    }
    
    func didFailWithError(error: Error){
        print(error)
    }
}
//MARK: - CLLocationManagerDelegate
extension WeatherViewController:CLLocationManagerDelegate{
    func locationManager(_manager: CLLocationManager,didUpdateLocations locations:[CLLocation])
}
