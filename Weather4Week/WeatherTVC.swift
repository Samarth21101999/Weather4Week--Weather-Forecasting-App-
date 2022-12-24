//
//  WeatherTVC.swift
//  Weather4Week
//
//  Created by Dhruv Savani on 2022-11-24.
//

import UIKit

class WeatherTVC: UITableViewCell {

    @IBOutlet weak var weatherView: UIView! //Weather View
    @IBOutlet weak var weatherIcon: UIImageView! //weatherIcon imageview to show icon according to weather description
    @IBOutlet weak var dayLabel: UILabel! //Day label to print days
    @IBOutlet weak var weatherDescLabel: UILabel! //Weather Description label to priny weather description
    @IBOutlet weak var tempLabel: UILabel! //tempLabel to print Temperatur
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
