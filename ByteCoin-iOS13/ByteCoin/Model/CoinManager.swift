//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdatePrice(price:String,currency:String)
    func didFailWithError(error:Error)
}

struct CoinManager {
    var delegate: CoinManagerDelegate?

    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "A000F478-C6E6-44E0-AE42-9C617B1EACBB"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
        
    func getCoinPrice(for currency:String){
        let urlString = "\(baseURL)/\(currency)?APIKEY=\(apiKey)"
 
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task =  session.dataTask(with: url) { (data, resposnse, error) in
                if error != nil {
                    print(error!)
                    return
                }
              
                
                if let safeData=data{
                    if let bitcoinPrice=self.parseJson(safeData){
                        let priceString = String(format: "%.2f", bitcoinPrice)
                    self.delegate?.didUpdatePrice(price: priceString, currency: currency)
                }
            }
        }
            task.resume()
    }
        
    }
    func parseJson(_ data:Data)->Double?{
        let decoder=JSONDecoder()
        do{
           let decodedData = try decoder.decode(CoinData.self, from: data)
            let lastPrice=decodedData.rate
            print(lastPrice)
           return lastPrice
            
        }catch{
          print(error)
            return nil
        }
    }
    
}
