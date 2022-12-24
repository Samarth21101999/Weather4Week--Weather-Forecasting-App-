//
//  SecondViewController.swift
//  Weather4Week
//
//  Created by user215233 on 11/24/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var temperature: UILabel! //Temperature Label
    @IBOutlet weak var weatherIcon: UIImageView! //Weather icon
    @IBOutlet weak var weatherDescription: UILabel! //Weather Description
    @IBOutlet weak var weatherBackground: UIImageView! //Weather Background Image
    @IBOutlet weak var weekDayLabel: UILabel!
    var tempPrint:Double? //Temperature variable
    var weatherIconPrint:String? //weather icon variable
    var descPrint:String?//Description variable
    var day:String?//Day variable
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //I am getting data from the main view controller and if I don't put ? in the var declaration it will give an error and if I remove label.text from the if statement it will print for e.g., Optional(4.3°C) in temperature label.
        
        //Temperature
        if let currentTemp=tempPrint{
            temperature.text="\(Int(ceil(currentTemp)))°C"
        }
        //Weather Description
        if let currentDescription=descPrint{
            weatherDescription.text="\(currentDescription)"
        }
        //Day
        if let currentDay=day{
            weekDayLabel.text="\(currentDay)"
        }
        //Weather icon
        if let currentIcon=weatherIconPrint{
            switch (currentIcon)
            {
                case "01d", "01n":
                    weatherIcon.image = UIImage(named: "01d")
                    weatherBackground.image=UIImage(named:"Clear")
                    
                case "02d", "02n":
                    weatherIcon.image = UIImage(named:"02d")
                    weatherBackground.image=UIImage(named:"clouds")
                    
                case "03d", "03n":
                    weatherIcon.image = UIImage(named:"03d")
                    weatherBackground.image=UIImage(named:"clouds")
                    
                case "04d", "04n":
                    weatherIcon.image = UIImage(named:"04d")
                    weatherBackground.image=UIImage(named:"clouds")
                    
                case "09d", "09n":
                    weatherIcon.image = UIImage(named:"09d")
                    weatherBackground.image=UIImage(named:"rain")
                    
                case "10d", "10n":
                    weatherIcon.image = UIImage(named:"10d")
                    weatherBackground.image=UIImage(named:"rain")
                
                case "11d", "11n":
                    weatherIcon.image = UIImage(named:"11d")
                    weatherBackground.image=UIImage(named:"thunderstrom")

                case "13d", "13n":
                    weatherIcon.image = UIImage(named:"13d")
                    weatherBackground.image=UIImage(named:"snow fall")
                    
                case "50d", "50n":
                    weatherIcon.image = UIImage(named:"50d")
                    weatherBackground.image=UIImage(named:"mist")
                default:
                weatherIcon.image = UIImage(named:"01d")
                    weatherBackground.image=UIImage(named:"Clear")
                    
            }
        }
    }
}
