//
//  WeatherDataWeekly.swift
//  Weather4Week
//
//  Created by user215233 on 11/24/22.
//

import Foundation
struct WeatherDataWeekly:Codable{
    var daily = [WeatherDataDaily]();
    
}
struct WeatherDataDaily:Codable{ 
    var weather = [Weather]()
    let temp:Temp //To get temperature
    let dt:Double //To get date Timestamp

}
struct Weather:Codable {    //structure for taking weather description and icon name from api
    let description:String //To get weather description
    let main:String
    let icon : String //To get the icon name
}
struct Temp:Codable{    //structure for getting temperature
    let day:Double //To get the day temperature
}

